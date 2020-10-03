import 'package:flutter/material.dart';
import 'package:quick_code/model/ussd_model.dart';
import 'package:quick_code/util/gtb_codes.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:toast/toast.dart';

class GTBScreen extends StatefulWidget {
  @override
  _GTBScreenState createState() => _GTBScreenState();
}

class _GTBScreenState extends State<GTBScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Plugin example app'),
      ),
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                  itemCount: gtbList.length,
                  itemBuilder: (context, index) {
                    var ussd = gtbList[index];
                    return Card(
                        margin: EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            if (ussd.subCodes.isEmpty) {
                              print(ussd.toUssd());
                              _launchURL(ussd.toUssd());
                            } else {
                              showDialog(
                                  context: context,
                                  builder: (_) {
                                    return USSDSubOptionDialog(
                                        ussd, _launchURL);
                                  });
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(ussd.description),
                          ),
                        ));
                  }),
            ),
            /*MaterialButton(
              color: Colors.blue,
              child: new Text("CLICK ME"),
              onPressed: () async {
                Contact contact = await _contactPicker.selectContact();
                setState(() {
                  _contact = contact;
                });
              },
            ),
            new Text(
              _contact == null ? 'No contact selected.' : _contact.toString(),
            ),*/
          ],
        ),
      ),
    );
  }

  _launchURL(String ussd) async {
    var url = "tel:$ussd";
    if (await canLaunch(url)) {
      await launch("tel:" + Uri.encodeComponent('$ussd'));
    } else {
      throw 'Could not launch $url';
    }
  }
}

class USSDSubOptionDialog extends StatefulWidget {
  USSDSubOptionDialog(this.ussd, this.launchURL);
  final UssdModel ussd;
  final Function(String ussd) launchURL;

  @override
  _USSDSubOptionDialogState createState() => _USSDSubOptionDialogState();
}

class _USSDSubOptionDialogState extends State<USSDSubOptionDialog> {
  var formKey = GlobalKey<FormState>();
  var listOfControllers = <TextEditingController>[];

  @override
  void initState() {
    widget.ussd.subCodes.forEach((sub) {
      listOfControllers.add(TextEditingController());
    });
    super.initState();
  }

  @override
  void dispose() {
    for (var controller in listOfControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: Form(
              key: formKey,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.ussd.subCodes.length,
                  itemBuilder: (context, index) {
                    var sub = widget.ussd.subCodes[index];

                    return sub.isContact
                        ? Row(
                            children: <Widget>[
                              Expanded(
                                  child: TextFormField(
                                textInputAction:
                                    index < widget.ussd.subCodes.length
                                        ? TextInputAction.next
                                        : TextInputAction.done,
                                keyboardType: TextInputType.phone,
                                controller: listOfControllers[index],
                                decoration:
                                    InputDecoration(labelText: sub.label),
                                validator: (value) {
                                  if (value.length < 11) {
                                    return "Invalid phone number";
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  sub.digit = value;
                                },
                              )),
                              IconButton(
                                  icon: Icon(Icons.contacts),
                                  onPressed: () {
                                    // selectPhoneNumber((String contact) {
                                    //   try{
                                    //     int phone = int.parse(contact.replaceAll("+234", "").trim().replaceAll(" ", ""));
                                    //     listOfControllers[index].text = "0$phone";
                                    //   }catch (e){
                                    //     /*Scaffold.of(context).showSnackBar(
                                    //         SnackBar(content: Text("Invalid contact selected"),
                                    //             duration: Duration(seconds: 3)));*/
                                    //     Toast.show("Invalid contact selected", context,
                                    //         duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                                    //   }
                                    // });
                                  })
                            ],
                          )
                        : TextFormField(
                            textInputAction: index < widget.ussd.subCodes.length
                                ? TextInputAction.next
                                : TextInputAction.done,
                            keyboardType: TextInputType.number,
                            controller: listOfControllers[index],
                            decoration: InputDecoration(labelText: sub.label),
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Enter ${sub.label.toLowerCase()}";
                              }

                              return null;
                            },
                            onSaved: (value) {
                              sub.digit = "${int.parse(value)}";
                            },
                          );
                  }),
            ),
          ),
        ],
      ),
      actions: <Widget>[
        FlatButton(
            child: Text('Continue'),
            onPressed: () {
              if (formKey.currentState.validate()) {
                formKey.currentState.save();
                Navigator.pop(context);
                widget.launchURL(widget.ussd.toUssd());
              }
            })
      ],
    );
  }

  // final ContactPicker _contactPicker = new ContactPicker();
  // void selectPhoneNumber(Function(String contact) setContact) async {
  //   Contact contact = await _contactPicker.selectContact();
  //   setContact(contact.phoneNumber.number);
  // }
}
