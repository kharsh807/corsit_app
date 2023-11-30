import 'package:corsit/pages/Members.dart';
import 'package:corsit/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class sideBar extends StatefulWidget {
  const sideBar({super.key});

  @override
  State<sideBar> createState() => _sideBarState();
}

class _sideBarState extends State<sideBar> {
  List<ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'Homepage',
            baseStyle: TextStyle(),
            selectedStyle: TextStyle(),
          ),
          HomePage()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'Members',
            baseStyle: TextStyle(),
            selectedStyle: TextStyle(),
          ),
          Members()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.grey.shade200,
      screens: _pages,
      initPositionSelected: 0,
    );
  }
}
