import 'package:flutter/material.dart';
import 'package:quick_code/ui/util/color_utils.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorUtils.primaryColorDark,
          unselectedItemColor: ColorUtils.primaryColorLight,
          onTap: _tabSelected,
          items: [
        BottomNavigationBarItem(
            icon: Icon(EvaIcons.hash), title: Text("Networks")),
        BottomNavigationBarItem(
            icon: Icon(EvaIcons.npmOutline), title: Text("Banks")),
        BottomNavigationBarItem(
            icon: Icon(EvaIcons.listOutline), title: Text("Recent")),
        BottomNavigationBarItem(icon: Icon(EvaIcons.personOutline), title: Text("My Codes"))
      ]),
    );
  }

  void _tabSelected(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
