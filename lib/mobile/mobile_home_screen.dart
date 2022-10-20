import 'package:flutter/material.dart';
// import 'package:quora_clone/utils/constent.dart';
import 'package:quora_clone/widget/app_bar_widget.dart';

import '../utils/constent.dart';
import '../widget/card_listview_design.dart';
import '../widget/header_home_screen.dart';

class HomeScreeen extends StatefulWidget {
  const HomeScreeen({super.key});

  @override
  State<HomeScreeen> createState() => _HomeScreeenState();
}

class _HomeScreeenState extends State<HomeScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(
        backgroundColor: Colors.grey[100],
        backgroundImage: NetworkImage(profile!),
        elevation: 0.3,
        title: "Home",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeaderWigdet(),
            CardListView(),
          ],
        ),
      ),
    );
  }
}
