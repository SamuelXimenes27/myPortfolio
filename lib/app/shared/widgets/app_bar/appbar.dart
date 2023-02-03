import 'package:flutter/material.dart';

import '../../../shared/constants/colors_const.dart';
import '../../../shared/constants/string_const.dart';
import '../../../shared/widgets/buttons/action_text_route.dart';

class CustomAppBar extends StatefulWidget {
  final Function() onTapHome;
  final Function() onTapSkills;
  final Function() onTapAbout;
  final Function() onTapName;
  final Function() onTapProjects;
  const CustomAppBar({
    Key? key,
    required this.onTapHome,
    required this.onTapSkills,
    required this.onTapAbout,
    required this.onTapName,
    required this.onTapProjects,
  }) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: ColorsConst.primary1,
      title: Row(
        children: [
          Container(
            width: _size.width / 5,
            color: ColorsConst.primary1,
            height: _size.height,
            child: ActionText(
              onTap: widget.onTapName,
              text: StringConst.myName,
              haveFontWeight: true,
            ),
          ),
          SizedBox(
            width: _size.width / 2.1,
            height: _size.height,
          ),
          SizedBox(
            width: _size.width / 20,
            height: _size.height,
            child: ActionText(
              onTap: widget.onTapHome,
              text: StringConst.appBarHome,
            ),
          ),
          SizedBox(
            width: _size.width / 20,
            height: _size.height,
            child: ActionText(
              onTap: widget.onTapAbout,
              text: StringConst.appBarAbout,
            ),
          ),
          SizedBox(
            width: _size.width / 12,
            height: _size.height,
            child: ActionText(
              onTap: widget.onTapSkills,
              text: StringConst.appBarSkills,
            ),
          ),
          SizedBox(
            width: _size.width / 18,
            height: _size.height,
            child: ActionText(
              onTap: widget.onTapProjects,
              text: StringConst.appBarProjects,
            ),
          ),
        ],
      ),
    );
  }
}
