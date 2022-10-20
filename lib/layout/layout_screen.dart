import 'package:flutter/material.dart';

import '../utils/constent.dart';

class ScreenLayout extends StatefulWidget {
  const ScreenLayout({super.key});

  @override
  State<ScreenLayout> createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
  int currentPage = 0;

  changepage(page) {
    setState(() {
      currentPage = page;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: screenList[currentPage]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: currentPage,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.red[900],
        showSelectedLabels: false,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list_alt_outlined,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.edit_road,
              ),
              label: ""),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.groups_sharp,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_outlined,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
