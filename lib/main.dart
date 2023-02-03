import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portifolio_web/shared/widgets/app_bar/appbar_vertical.dart';

import 'shared/web/page/landingpage/landing_page.dart';
import '../shared/widgets/app_bar/appbar.dart';

void main() {
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        child: LandingPage(
          scrollController: controller!,
          firstKey: firstAnchor,
          secondKey: secondAnchor,
          thirdKey: thirdAnchor,
          fourthKey: fourthAnchor,
        ),
      ),
    );
  }
}
