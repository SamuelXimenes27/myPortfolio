import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors_const.dart';

class CustomAppBarVertical extends StatefulWidget {
  const CustomAppBarVertical({Key? key}) : super(key: key);

  @override
  State<CustomAppBarVertical> createState() => _CustomAppBarVerticalState();
}

class _CustomAppBarVerticalState extends State<CustomAppBarVertical> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsConst.primary1,
      title: Text(
        'Samuel Ximenes',
        style: GoogleFonts.poppins(),
      ),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu),
      ),
    );
  }
}
