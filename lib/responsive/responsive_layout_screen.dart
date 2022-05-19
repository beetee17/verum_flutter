import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:verum_flutter/utils/dimensions.dart';

class ResposiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;

  const ResposiveLayout({
    Key? key,
    required this.webScreenLayout,
    required this.mobileScreenLayout
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > webScreenWidth) {
        return webScreenLayout;
      } else {
        return mobileScreenLayout;
      }
    });
  }
}
