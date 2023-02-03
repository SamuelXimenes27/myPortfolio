import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portifolio_web/app/shared/constants/string_const.dart';

import '../../constants/colors_const.dart';

class CustomSideBar extends StatefulWidget {
  const CustomSideBar({
    Key? key,
    required this.onTapHeader,
    required this.onTapHome,
    required this.onTapSkills,
    required this.onTapAbout,
    required this.onTapProjects,
  }) : super(key: key);

  final Function() onTapHeader;
  final Function() onTapHome;
  final Function() onTapSkills;
  final Function() onTapAbout;
  final Function() onTapProjects;
  @override
  State<CustomSideBar> createState() => _CustomSideBarState();
}

class _CustomSideBarState extends State<CustomSideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: ColorsConst.white80,
            ),
            child: InkWell(
              onTap: widget.onTapHeader,
              child: Center(
                child: Image.asset('assets/icons/logoHD.png'),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text(StringConst.appBarHome),
            onTap: widget.onTapHome,
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text(StringConst.appBarAbout),
            onTap: widget.onTapAbout,
          ),
          ListTile(
            leading: const Icon(Icons.show_chart),
            title: const Text(StringConst.appBarSkills),
            onTap: widget.onTapSkills,
          ),
          ListTile(
            leading: const Icon(Icons.library_books),
            title: const Text(StringConst.appBarProjects),
            onTap: widget.onTapProjects,
          ),
        ],
      ),
    );
  }
}
