import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:portifolio_web/shared/constants/colors_const.dart';

class LinearPercentWithIcon extends StatefulWidget {
  final String pathImageIcon;
  final String titleChart;
  final String percentString;
  final double percentValueChart;
  final double widthChart;
  const LinearPercentWithIcon({
    Key? key,
    required this.pathImageIcon,
    required this.titleChart,
    required this.percentString,
    required this.percentValueChart,
    required this.widthChart,
  }) : super(key: key);

  @override
  State<LinearPercentWithIcon> createState() => _LinearPercentWithIconState();
}

class _LinearPercentWithIconState extends State<LinearPercentWithIcon> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ImageIcon(
                  AssetImage(widget.pathImageIcon),
                  size: 44,
                ),
              ),
              Expanded(
                flex: 10,
                child: Text(
                  widget.titleChart,
                  style: GoogleFonts.poppins(),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(widget.percentString),
              ),
            ],
          ),
          Center(
            child: LinearPercentIndicator(
              width: widget.widthChart,
              lineHeight: _size.height * 0.015,
              percent: widget.percentValueChart,
              backgroundColor: Colors.grey,
              progressColor: ColorsConst.infoColor1,
              barRadius: const Radius.circular(5),
            ),
          ),
        ],
      ),
    );
  }
}
