import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portifolio_web/app/responsive/responsive_layout.dart';
import 'package:portifolio_web/app/modules/projects/fourth_layer.dart';

import '../../shared/widgets/app_bar/appbar.dart';
import '../../shared/widgets/app_bar/appbar_vertical.dart';
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

class _LandingPageState extends State<LandingPage> {
  ScrollController? controller = ScrollController();
  final firstAnchor = GlobalKey();
  final secondAnchor = GlobalKey();
  final thirdAnchor = GlobalKey();
  final fourthAnchor = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: kIsWeb ? _size * 0.05 : _size * 0.07,
          child: _size.width > 600
              ? CustomAppBar(
                  onTapName: () {
                    controller!.position.ensureVisible(
                      firstAnchor.currentContext!.findRenderObject()!,
                      alignment: 0.5,
                      duration: const Duration(
                        seconds: 2,
                      ),
                    );
                  },
                  onTapHome: () {
                    controller!.position.ensureVisible(
                      firstAnchor.currentContext!.findRenderObject()!,
                      alignment: 0.5,
                      duration: const Duration(
                        seconds: 2,
                      ),
                    );
                  },
                  onTapAbout: () {
                    controller!.position.ensureVisible(
                      secondAnchor.currentContext!.findRenderObject()!,
                      alignment: 0.5,
                      duration: const Duration(
                        seconds: 2,
                      ),
                    );
                  },
                  onTapSkills: () {
                    controller!.position.ensureVisible(
                      thirdAnchor.currentContext!.findRenderObject()!,
                      alignment: 0.5,
                      duration: const Duration(
                        seconds: 2,
                      ),
                    );
                  },
                  onTapProjects: () {
                    controller!.position.ensureVisible(
                      fourthAnchor.currentContext!.findRenderObject()!,
                      alignment: 0.0,
                      duration: const Duration(
                        seconds: 2,
                      ),
                    );
                  },
                )
              : const CustomAppBarVertical()),
      body: SingleChildScrollView(
        controller: controller,
        child: ResponsiveLayout(
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
            controller: controller,
            thumbVisibility: true,
            child: Column(
              children: [
                Container(
                  key: firstAnchor,
                  child: const FirstLayer(),
                ),
                Container(
                  key: secondAnchor,
                  child: const SecondLayer(),
                ),
                Container(
                  key: thirdAnchor,
                  child: const ThirdLayer(),
                ),
                Container(
                  key: fourthAnchor,
                  child: const FourthLayer(),
                ),
                const FooterApp()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
