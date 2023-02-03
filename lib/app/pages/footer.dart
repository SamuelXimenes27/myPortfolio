import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../shared/constants/colors_const.dart';

class FooterApp extends StatelessWidget {
  const FooterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Container(
      color: ColorsConst.infoColor1,
      width: _size.width,
      height: _size.height * 0.07,
      child: Center(
        child: RichText(
          text: TextSpan(
            text: '',
            children: [
              TextSpan(
                text: 'Desenvolvidor por ',
                style: GoogleFonts.poppins(
                    fontSize: _size.width > 600 ? 16 : 10,
                    color: ColorsConst.primary1,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'Samuel Ximenes de Oliveira',
                style: GoogleFonts.poppins(
                  fontSize: _size.width > 600 ? 16 : 10,
                  color: Colors.white,
                  letterSpacing: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
