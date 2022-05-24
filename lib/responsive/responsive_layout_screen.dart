import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:verum_flutter/providers/user_provider.dart';
import 'package:verum_flutter/utils/global_variables.dart';

class ResposiveLayout extends StatefulWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;

  const ResposiveLayout({
    Key? key,
    required this.webScreenLayout,
    required this.mobileScreenLayout
  }) : super(key: key);

  @override
  State<ResposiveLayout> createState() => _ResposiveLayoutState();
}

class _ResposiveLayoutState extends State<ResposiveLayout> {
  @override
  void initState() {
    super.initState();
    addData();
  }

  addData() async {
    UserProvider _userProvider = Provider.of(context, listen: false);
    await _userProvider.refreshUser();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > webScreenWidth) {
        return widget.webScreenLayout;
      } else {
        return widget.mobileScreenLayout;
      }
    });
  }
}
