
// import 'package:base_project_flutter/responsive.dart';
// import 'package:base_project_flutter/views/homePage/drawer.dart';
// import 'package:base_project_flutter/views/homePage/homePage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../ctstart/ctstart.dart';
// import '../../constants/constants.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key? key, this.tabIndexId}) : super(key: key);

  final tabIndexId;
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  void checkBottomIndex() {
    setState(() {
      tabIndexs = widget.tabIndexId != null ? widget.tabIndexId : 0;
    });
  }

  var tabIndexs = 0;
  void _onItemTapped(int index) {
    setState(() {
      tabIndexs = index;
      print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // DrawerList(),
          IndexedStack(
            index: tabIndexs,
            children: [
              CTStart(),
              Container(),
              Container(),
              Container(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
        currentIndex: tabIndexs,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize:  30,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 0,
        items: [
          _bottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          _bottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Store',
          ),
          _bottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          _bottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  _bottomNavigationBarItem({required icon, required String label}) {
    return BottomNavigationBarItem(
      icon: icon,
      label: label,
    );
  }
}
