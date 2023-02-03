import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors_const.dart';

class PercentSectionTitle extends StatefulWidget {
  final String title;
  final double fontSizeTitle;
  const PercentSectionTitle({
    Key? key,
    required this.title,
    this.fontSizeTitle = 32,
  }) : super(key: key);

  @override
  State<PercentSectionTitle> createState() => _PercentSectionTitleState();
}

class _PercentSectionTitleState extends State<PercentSectionTitle> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return SizedBox(
      width: _size.width,
      height: _size.height * 0.08,
      child: Column(
        children: [
          SizedBox(
            height: _size.height / 18,
            child: Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  text: '',
                  children: [
                    TextSpan(
                      text: widget.title,
                      style: GoogleFonts.poppins(
                        fontSize: widget.fontSizeTitle,
                        color: ColorsConst.infoColor1,
                        letterSpacing: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
