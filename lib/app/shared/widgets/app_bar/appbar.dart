import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio_web/app/shared/constants/colors_const.dart';
import 'package:portifolio_web/app/shared/constants/string_const.dart';

class CustomAppBar extends StatefulWidget {
  final double opacity;
  final Function() onTapHome;
  final Function() onTapSkills;
  final Function() onTapAbout;
  final Function() onTapName;
  final Function() onTapProjects;

  const CustomAppBar({
    Key? key,
    required this.opacity,
    required this.onTapHome,
    required this.onTapSkills,
    required this.onTapAbout,
    required this.onTapName,
    required this.onTapProjects,
  }) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: ColorsConst.primary1,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                onTap: widget.onTapHome,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    'Samuel Ximenes',
                    style: GoogleFonts.poppins(
                      color: ColorsConst.white100,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 3,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: screenSize.width / 8),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[0] = true
                              : _isHovering[0] = false;
                        });
                      },
                      onTap: widget.onTapHome,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            StringConst.appBarHome,
                            style: TextStyle(
                                color: _isHovering[0]
                                    ? Colors.blue.shade200
                                    : Colors.white,
                                fontSize: 20),
                          ),
                          const SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[0],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 20),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[1] = true
                              : _isHovering[1] = false;
                        });
                      },
                      onTap: widget.onTapAbout,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            StringConst.appBarAbout,
                            style: TextStyle(
                                color: _isHovering[1]
                                    ? Colors.blue[200]
                                    : Colors.white,
                                fontSize: 20),
                          ),
                          const SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[1],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 20),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[2] = true
                              : _isHovering[2] = false;
                        });
                      },
                      onTap: widget.onTapSkills,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            StringConst.appBarSkills,
                            style: TextStyle(
                                color: _isHovering[2]
                                    ? Colors.blue[200]
                                    : Colors.white,
                                fontSize: 20),
                          ),
                          const SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[2],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 20),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[3] = true
                              : _isHovering[3] = false;
                        });
                      },
                      onTap: widget.onTapProjects,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            StringConst.appBarProjects,
                            style: TextStyle(
                                color: _isHovering[3]
                                    ? Colors.blue[200]
                                    : Colors.white,
                                fontSize: 20),
                          ),
                          const SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[3],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
