import 'package:flutter/material.dart';
import 'package:quick_code/ui/home/banks_screen.dart';
import 'package:quick_code/ui/home/my_codes_screen.dart';
import 'package:quick_code/ui/home/networks_screen.dart';
import 'package:quick_code/ui/home/recent_screen.dart';
import 'package:quick_code/ui/util/color_utils.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  PageController _pageController = PageController();

  var screens = [
    ScreenTitle(NetworksScreen(), "Mobile"),
    ScreenTitle(BanksScreen(), "Banks"),
    ScreenTitle(RecentScreen(), "Services"),
//    ScreenTitle(MyCodesScreen(), "My Codes"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: ColorUtils.primaryColor),
        title: Text(
          "${screens[_currentIndex].title}",
          style: TextStyle(color: ColorUtils.primaryColor),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(EvaIcons.searchOutline), onPressed: () {}),
          IconButton(icon: Icon(EvaIcons.moreVerticalOutline), onPressed: () {})
        ],
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: screens.map((st) => st.screen).toList(),
      ),
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
                icon: Icon(EvaIcons.settingsOutline), title: Text("Services")),
//            BottomNavigationBarItem(
//                icon: Icon(EvaIcons.personOutline), title: Text("My Codes"))
          ]),
    );
  }

  void _tabSelected(int value) {
    setState(() {
      _currentIndex = value;
    });
    switchScreen(value);
  }

  void switchScreen(int index) {
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }
}

class ScreenTitle {
  Widget screen;
  String title;

  ScreenTitle(this.screen, this.title);
}
