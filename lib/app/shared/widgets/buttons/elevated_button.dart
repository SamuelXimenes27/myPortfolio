import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors_const.dart';

class CustomElevatedButton extends StatefulWidget {
  final Function()? onPressed;
  final String? textButton;
  final dynamic borderRadiusValue;
  final double fontSizeButton;
  const CustomElevatedButton({
    Key? key,
    this.onPressed,
    this.textButton,
    this.borderRadiusValue = 100,
    this.fontSizeButton = 24,
  }) : super(key: key);

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return ElevatedButton(
        onPressed: widget.onPressed,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            widget.textButton!,
            style: GoogleFonts.poppins(
              fontSize: widget.fontSizeButton,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.borderRadiusValue),
          ),
          backgroundColor: ColorsConst.primary1,
        ),
      );
    });
  }
}
