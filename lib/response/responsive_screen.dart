import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quora_clone/layout/layout_screen.dart';

import '../desktop/desktop_home_screen.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: ((BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth < 640) {
        return const ScreenLayout();
      } else if (constraints.maxWidth <= 640 || constraints.maxWidth < 900) {
        return const ScreenLayout();
      } else {
        return const DesktopScreen();
      }
    }));
  }
}
