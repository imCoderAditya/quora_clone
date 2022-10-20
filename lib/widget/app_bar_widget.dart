import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/constent.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  double? elevation;
  Color? backgroundColor;
  Color? circleAvatarBackgroundColor;
  ImageProvider? backgroundImage;
  String? title;

  AppBarWidget({
    Key? key,
    required this.elevation,
    this.backgroundColor,
    this.circleAvatarBackgroundColor,
    this.backgroundImage,
    required this.title,
  })  : preferredSize = const Size.fromHeight(kAppBarHeight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.grey[100],
          statusBarIconBrightness: Brightness.dark,
        ),
        elevation: 0.4,
        backgroundColor: backgroundColor,
        leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: backgroundImage,
              backgroundColor: circleAvatarBackgroundColor,
            )),
        title: const Text(
          "Home",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.control_point_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
