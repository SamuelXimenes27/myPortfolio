import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio_web/app/responsive/responsive_layout.dart';
import 'package:portifolio_web/app/modules/projects/fourth_layer.dart';

import '../../shared/constants/colors_const.dart';
import '../../shared/widgets/app_bar/appbar.dart';
import '../../shared/widgets/app_bar/sidebar.dart';
import '../home/first_layer.dart';
import '../../pages/footer.dart';
import '../about/second_layer.dart';
import '../skills/third_layer.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with SingleTickerProviderStateMixin {
  ScrollController? scrollController = ScrollController();
  final firstAnchor = GlobalKey();
  final secondAnchor = GlobalKey();
  final thirdAnchor = GlobalKey();
  final fourthAnchor = GlobalKey();
  bool isOpen = true;
  bool isFirstTime = true;

  late AnimationController animationController;
  late CurvedAnimation _curve;

  double scrollPosition = 0.0;

  @override
  initState() {
    super.initState();
    scrollController!.addListener(() {
      setState(() {
        scrollPosition = scrollController!.position.pixels;
      });
    });
    animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    _curve = CurvedAnimation(parent: animationController, curve: Curves.easeIn);
    animationController.forward();
  }

  double getOpacityValue(double scrollPosition, double targetPosition) {
    const double opacityStart = 0.0;
    const double opacityEnd = 1.0;

    double opacity = 0.0;

    if (scrollPosition >= targetPosition) {
      opacity = (scrollPosition - targetPosition) / 300.0;
      opacity = opacity.clamp(opacityStart, opacityEnd);
    }

    return opacity;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: kIsWeb ? size * 0.09 : size * 0.07,
        child: size.width > 740
            ? CustomAppBar(
                opacity: 1,
                onTapName: () {
                  scrollController!.position.ensureVisible(
                    firstAnchor.currentContext!.findRenderObject()!,
                    alignment: 0.5,
                    duration: const Duration(
                      seconds: 2,
                    ),
                  );
                },
                onTapHome: () {
                  scrollController!.position.ensureVisible(
                    firstAnchor.currentContext!.findRenderObject()!,
                    alignment: 0.5,
                    duration: const Duration(
                      seconds: 2,
                    ),
                  );
                },
                onTapAbout: () {
                  scrollController!.position.ensureVisible(
                    secondAnchor.currentContext!.findRenderObject()!,
                    alignment: 0.5,
                    duration: const Duration(
                      seconds: 2,
                    ),
                  );
                },
                onTapSkills: () {
                  scrollController!.position.ensureVisible(
                    thirdAnchor.currentContext!.findRenderObject()!,
                    alignment: 0.5,
                    duration: const Duration(
                      seconds: 2,
                    ),
                  );
                },
                onTapProjects: () {
                  scrollController!.position.ensureVisible(
                    fourthAnchor.currentContext!.findRenderObject()!,
                    alignment: 0.0,
                    duration: const Duration(
                      seconds: 2,
                    ),
                  );
                },
              )
            : AppBar(
                backgroundColor: ColorsConst.primary1,
                toolbarHeight: size.height * 0.1,
                title: Center(
                  child: Text(
                    'Samuel Ximenes',
                    style: GoogleFonts.poppins(fontSize: 28),
                  ),
                ),
              ),
      ),
      drawer: size.width < 600
          ? CustomSideBar(
              onTapHeader: () {
                scrollController!.position.ensureVisible(
                  firstAnchor.currentContext!.findRenderObject()!,
                  alignment: 0.5,
                  duration: const Duration(
                    seconds: 2,
                  ),
                );
                Navigator.pop(context);
              },
              onTapHome: () {
                scrollController!.position.ensureVisible(
                  firstAnchor.currentContext!.findRenderObject()!,
                  alignment: 0.5,
                  duration: const Duration(
                    seconds: 2,
                  ),
                );
                Navigator.pop(context);
              },
              onTapAbout: () {
                scrollController!.position.ensureVisible(
                  secondAnchor.currentContext!.findRenderObject()!,
                  alignment: 0.5,
                  duration: const Duration(
                    seconds: 2,
                  ),
                );
                Navigator.pop(context);
              },
              onTapSkills: () {
                scrollController!.position.ensureVisible(
                  thirdAnchor.currentContext!.findRenderObject()!,
                  alignment: 0.5,
                  duration: const Duration(
                    seconds: 2,
                  ),
                );
                Navigator.pop(context);
              },
              onTapProjects: () {
                scrollController!.position.ensureVisible(
                  fourthAnchor.currentContext!.findRenderObject()!,
                  alignment: 0.0,
                  duration: const Duration(
                    seconds: 2,
                  ),
                );
                Navigator.pop(context);
              },
            )
          : Container(),
      body: SingleChildScrollView(
        controller: scrollController,
        child: ResponsiveLayout(
          mobileBody: const Column(
            children: [
              FirstLayer(),
              SecondLayer(),
              ThirdLayer(),
              FourthLayer(),
              FooterApp()
            ],
          ),
          webBody: Scrollbar(
            controller: scrollController,
            thumbVisibility: true,
            child: Column(
              children: [
                FadeTransition(
                  opacity: _curve,
                  child: Container(
                    key: firstAnchor,
                    child: const FirstLayer(),
                  ),
                ),
                AnimatedOpacity(
                  opacity: getOpacityValue(scrollPosition, 100.0),
                  duration: const Duration(seconds: 1),
                  child: Container(
                    key: secondAnchor,
                    child: const SecondLayer(),
                  ),
                ),
                AnimatedOpacity(
                  opacity: getOpacityValue(scrollPosition, 700.0),
                  duration: const Duration(seconds: 1),
                  child: Container(
                    key: thirdAnchor,
                    child: const ThirdLayer(),
                  ),
                ),
                AnimatedOpacity(
                  opacity: getOpacityValue(scrollPosition, 1700.0),
                  duration: const Duration(seconds: 1),
                  child: Container(
                    key: fourthAnchor,
                    child: const FourthLayer(),
                  ),
                ),
                const FooterApp()
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  dispose() {
    animationController.dispose();
    super.dispose();
  }
}
