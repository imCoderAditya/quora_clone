import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:quora_clone/widget/app_bar_for_windows.dart';
import 'package:quora_clone/widget/card_listview_design.dart';
import 'package:quora_clone/widget/header_home_screen.dart';

import '../widget/check_box_design_list.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarForWindows(),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  HeaderWigdet(),
                  CardListView(),
                ],
              ),
            ),
          ),
          // Top Space code given below
          const Expanded(
            flex: 1,
            child: CheckBoxListDesign(),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
