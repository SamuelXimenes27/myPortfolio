import 'package:flutter/material.dart';

import '../../shared/widgets/percents/linear_percent_title.dart';
import '../../shared/widgets/percents/percent_section_title.dart';
import '../../shared/constants/string_const.dart';
import '../../shared/widgets/layers/layer_title.dart';

class ThirdLayer extends StatefulWidget {
  const ThirdLayer({Key? key}) : super(key: key);

  @override
  State<ThirdLayer> createState() => _ThirdLayerState();
}

class _ThirdLayerState extends State<ThirdLayer> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _scrollController = ScrollController();

    return Column(
      children: [
        const LayerTitle(
          title: '${StringConst.thirdLayerSkills}\n',
          subTitle: '${StringConst.thirdLayerProfessionalSkills}\n',
        ),
        _size.width > 600
            ? Row(
                children: [
                  SizedBox(
                    width: _size.width * 0.5,
                    height: _size.height * 0.7,
                    child: Center(
                      child: SizedBox(
                        width: _size.width * 0.45,
                        height: _size.height * 0.5,
                        child: Scrollbar(
                          controller: _scrollController,
                          thumbVisibility: true,
                          thickness: 9,
                          child: ListView(
                            controller: _scrollController,
                            children: [
                              const PercentSectionTitle(title: "Mobile"),
                              LinearPercentWithIcon(
                                widthChart: _size.width * 0.44,
                                pathImageIcon: 'assets/icons/flutter.png',
                                titleChart: 'Flutter',
                                percentString: '70%',
                                percentValueChart: 0.7,
                              ),
                              LinearPercentWithIcon(
                                widthChart: _size.width * 0.44,
                                pathImageIcon: 'assets/icons/kotlin.png',
                                titleChart: 'Kotlin',
                                percentString: '30%',
                                percentValueChart: 0.3,
                              ),
                              LinearPercentWithIcon(
                                widthChart: _size.width * 0.44,
                                pathImageIcon: 'assets/icons/android.png',
                                titleChart: 'Android',
                                percentString: '80%',
                                percentValueChart: 0.8,
                              ),
                              LinearPercentWithIcon(
                                widthChart: _size.width * 0.44,
                                pathImageIcon: 'assets/icons/ios.png',
                                titleChart: 'IOS',
                                percentString: '30%',
                                percentValueChart: 0.30,
                              ),
                              SizedBox(
                                height: _size.height / 18,
                              ),
                              const PercentSectionTitle(
                                  title: "Frontend - Web"),
                              LinearPercentWithIcon(
                                widthChart: _size.width * 0.44,
                                pathImageIcon: 'assets/icons/html5.png',
                                titleChart: 'HTML5',
                                percentString: '60%',
                                percentValueChart: 0.6,
                              ),
                              LinearPercentWithIcon(
                                widthChart: _size.width * 0.44,
                                pathImageIcon: 'assets/icons/css3.png',
                                titleChart: 'CSS3',
                                percentString: '60%',
                                percentValueChart: 0.6,
                              ),
                              LinearPercentWithIcon(
                                widthChart: _size.width * 0.44,
                                pathImageIcon: 'assets/icons/javascript.png',
                                titleChart: 'JavaScript',
                                percentString: '65%',
                                percentValueChart: 0.65,
                              ),
                              SizedBox(
                                height: _size.height / 18,
                              ),
                              const PercentSectionTitle(title: "Backend"),
                              LinearPercentWithIcon(
                                widthChart: _size.width * 0.44,
                                pathImageIcon: 'assets/icons/graphql.png',
                                titleChart: 'Graphql',
                                percentString: '40%',
                                percentValueChart: 0.4,
                              ),
                              LinearPercentWithIcon(
                                widthChart: _size.width * 0.44,
                                pathImageIcon: 'assets/icons/firebase.png',
                                titleChart: 'Firebase',
                                percentString: '40%',
                                percentValueChart: 0.4,
                              ),
                              LinearPercentWithIcon(
                                widthChart: _size.width * 0.44,
                                pathImageIcon: 'assets/icons/mysql.png',
                                titleChart: 'MySQL',
                                percentString: '70%',
                                percentValueChart: 0.7,
                              ),
                              LinearPercentWithIcon(
                                widthChart: _size.width * 0.44,
                                pathImageIcon: 'assets/icons/postgresql.png',
                                titleChart: 'PostgreSQL',
                                percentString: '60%',
                                percentValueChart: 0.6,
                              ),
                              SizedBox(
                                height: _size.height / 18,
                              ),
                              const PercentSectionTitle(
                                  title: "Demais Habilidades"),
                              LinearPercentWithIcon(
                                widthChart: _size.width * 0.44,
                                pathImageIcon: 'assets/icons/github.png',
                                titleChart: 'Github',
                                percentString: '80%',
                                percentValueChart: 0.8,
                              ),
                              LinearPercentWithIcon(
                                widthChart: _size.width * 0.44,
                                pathImageIcon: 'assets/icons/figma.png',
                                titleChart: 'Figma',
                                percentString: '50%',
                                percentValueChart: 0.5,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: _size.width * 0.5,
                    height: _size.height * 0.7,
                    child: Image.asset(
                      'assets/images/perfil-2.png',
                    ),
                  ),
                ],
              )
            : Column(
                children: [
                  SizedBox(
                    width: _size.width * 1,
                    height: _size.height * 0.3,
                    child: Image.asset(
                      'assets/images/perfil-2.png',
                    ),
                  ),
                  SizedBox(
                    width: _size.width * 1,
                    height: _size.height * 2.2,
                    child: SizedBox(
                        width: _size.width * 1,
                        height: _size.height * 0.5,
                        child: Column(
                          children: [
                            const PercentSectionTitle(
                              title: "Mobile",
                              fontSizeTitle: 24,
                            ),
                            LinearPercentWithIcon(
                              widthChart: _size.width * 0.95,
                              pathImageIcon: 'assets/icons/flutter.png',
                              titleChart: 'Flutter',
                              percentString: '70%',
                              percentValueChart: 0.7,
                            ),
                            LinearPercentWithIcon(
                              widthChart: _size.width * 0.95,
                              pathImageIcon: 'assets/icons/kotlin.png',
                              titleChart: 'Kotlin',
                              percentString: '30%',
                              percentValueChart: 0.3,
                            ),
                            LinearPercentWithIcon(
                              widthChart: _size.width * 0.95,
                              pathImageIcon: 'assets/icons/android.png',
                              titleChart: 'Android',
                              percentString: '80%',
                              percentValueChart: 0.8,
                            ),
                            LinearPercentWithIcon(
                              widthChart: _size.width * 0.95,
                              pathImageIcon: 'assets/icons/ios.png',
                              titleChart: 'IOS',
                              percentString: '30%',
                              percentValueChart: 0.30,
                            ),
                            SizedBox(
                              height: _size.height / 18,
                            ),
                            const PercentSectionTitle(
                              title: "Frontend - Web",
                              fontSizeTitle: 24,
                            ),
                            LinearPercentWithIcon(
                              widthChart: _size.width * 0.95,
                              pathImageIcon: 'assets/icons/html5.png',
                              titleChart: 'HTML5',
                              percentString: '60%',
                              percentValueChart: 0.6,
                            ),
                            LinearPercentWithIcon(
                              widthChart: _size.width * 0.95,
                              pathImageIcon: 'assets/icons/css3.png',
                              titleChart: 'CSS3',
                              percentString: '60%',
                              percentValueChart: 0.6,
                            ),
                            LinearPercentWithIcon(
                              widthChart: _size.width * 0.95,
                              pathImageIcon: 'assets/icons/javascript.png',
                              titleChart: 'JavaScript',
                              percentString: '65%',
                              percentValueChart: 0.65,
                            ),
                            SizedBox(
                              height: _size.height / 18,
                            ),
                            const PercentSectionTitle(
                              title: "Backend",
                              fontSizeTitle: 24,
                            ),
                            LinearPercentWithIcon(
                              widthChart: _size.width * 0.95,
                              pathImageIcon: 'assets/icons/graphql.png',
                              titleChart: 'Graphql',
                              percentString: '40%',
                              percentValueChart: 0.4,
                            ),
                            LinearPercentWithIcon(
                              widthChart: _size.width * 0.95,
                              pathImageIcon: 'assets/icons/firebase.png',
                              titleChart: 'Firebase',
                              percentString: '40%',
                              percentValueChart: 0.4,
                            ),
                            LinearPercentWithIcon(
                              widthChart: _size.width * 0.95,
                              pathImageIcon: 'assets/icons/mysql.png',
                              titleChart: 'MySQL',
                              percentString: '70%',
                              percentValueChart: 0.7,
                            ),
                            LinearPercentWithIcon(
                              widthChart: _size.width * 0.95,
                              pathImageIcon: 'assets/icons/postgresql.png',
                              titleChart: 'PostgreSQL',
                              percentString: '60%',
                              percentValueChart: 0.6,
                            ),
                            SizedBox(
                              height: _size.height / 18,
                            ),
                            const PercentSectionTitle(
                              title: "Demais Habilidades",
                              fontSizeTitle: 24,
                            ),
                            LinearPercentWithIcon(
                              widthChart: _size.width * 0.95,
                              pathImageIcon: 'assets/icons/github.png',
                              titleChart: 'Github',
                              percentString: '80%',
                              percentValueChart: 0.8,
                            ),
                            LinearPercentWithIcon(
                              widthChart: _size.width * 0.95,
                              pathImageIcon: 'assets/icons/figma.png',
                              titleChart: 'Figma',
                              percentString: '50%',
                              percentValueChart: 0.5,
                            ),
                          ],
                        )),
                  ),
                ],
              )
      ],
    );
  }
}
