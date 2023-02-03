import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionText extends StatefulWidget {
  final Function()? onTap;
  final String? text;
  final bool? haveFontWeight;
  const ActionText({
    Key? key,
    this.onTap,
    this.text,
    this.haveFontWeight = false,
  }) : super(key: key);

  @override
  State<ActionText> createState() => _ActionTextState();
}

class _ActionTextState extends State<ActionText> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Center(
        child: Text(
          widget.text!,
          style: GoogleFonts.poppins(
            fontWeight: widget.haveFontWeight! ? FontWeight.bold : null,
          ),
        ),
      ),
    );
  }
}
