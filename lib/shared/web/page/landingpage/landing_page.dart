import 'package:flutter/material.dart';
import 'package:portifolio_web/responsive/responsive_layout.dart';
import 'package:portifolio_web/shared/web/page/landingpage/fourth_layer.dart';

import 'first_layer.dart';
import 'footer.dart';
import 'second_layer.dart';
import 'third_layer.dart';

class LandingPage extends StatefulWidget {
  final ScrollController scrollController;
  final Key? firstKey;
  final Key? secondKey;
  final Key? thirdKey;
  final Key? fourthKey;

  const LandingPage({
    Key? key,
    required this.scrollController,
    required this.firstKey,
    required this.secondKey,
    required this.thirdKey,
    required this.fourthKey,
  }) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  // final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: Column(
        children: const [
          FirstLayer(),
          SecondLayer(),
          ThirdLayer(),
          FourthLayer(),
          FooterApp()
        ],
      ),
      webBody: Scrollbar(
        controller: widget.scrollController,
        thumbVisibility: true,
        child: Column(
          children: [
            Container(
              key: widget.firstKey,
              child: const FirstLayer(),
            ),
            Container(
              key: widget.secondKey,
              child: const SecondLayer(),
            ),
            Container(
              key: widget.thirdKey,
              child: const ThirdLayer(),
            ),
            Container(
              key: widget.fourthKey,
              child: const FourthLayer(),
            ),
            // FirstLayer(),
            // SecondLayer(),
            // ThirdLayer(),
            // FourthLayer(),
            const FooterApp()
          ],
        ),
      ),
    );
  }
}
