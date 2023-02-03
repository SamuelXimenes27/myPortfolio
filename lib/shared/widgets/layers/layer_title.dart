import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors_const.dart';

class LayerTitle extends StatefulWidget {
  final String title;
  final String subTitle;
  const LayerTitle({Key? key, required this.title, required this.subTitle})
      : super(key: key);

  @override
  State<LayerTitle> createState() => _LayerTitleState();
}

class _LayerTitleState extends State<LayerTitle> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return SizedBox(
      width: _size.width,
      height: _size.height * 0.14,
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
                        fontSize: 32,
                        color: ColorsConst.infoColor1,
                        letterSpacing: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: _size.height / 20,
            child: Align(
              alignment: Alignment.topCenter,
              child: RichText(
                text: TextSpan(
                  text: '',
                  children: [
                    TextSpan(
                      text: widget.subTitle,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.grey,
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
