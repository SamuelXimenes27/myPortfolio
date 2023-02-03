import 'package:flutter/material.dart';
import 'package:portifolio_web/shared/widgets/layers/project_card.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants/string_const.dart';
import '../../../widgets/layers/layer_title.dart';

class FourthLayer extends StatefulWidget {
  const FourthLayer({Key? key}) : super(key: key);

  @override
  State<FourthLayer> createState() => _FourthLayerState();
}

class _FourthLayerState extends State<FourthLayer> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Column(
      children: [
        const LayerTitle(
          title: '${StringConst.fourthLayerTitle}\n',
          subTitle: '${StringConst.fourthLayerSubTitle}\n',
        ),
        SizedBox(
          width: _size.width > 600 ? _size.width * 0.6 : _size.width * 1,
          height: _size.width > 600 ? _size.height * 1.2 : _size.height * 2.9,
          child: _size.width > 600
              ? GridView.count(
                  crossAxisCount: 2,
                  primary: false,
                  crossAxisSpacing: _size.width * 0.02,
                  mainAxisSpacing: _size.height * 0.03,
                  children: [
                    CardProject(
                      titleProject: 'My WebPortfolio (Este Projeto)',
                      descriptionProject:
                          'Projeto desenvolvido para usar como portfolio, falar um pouco sobre mim e mostrar meus projetos feitos.',
                      pathCardImage: 'assets/images/webPortfolio.png',
                      iconsTecnologys: Row(
                        children: const [
                          ImageIcon(
                            AssetImage('assets/icons/flutter.png'),
                            size: 44,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ImageIcon(
                            AssetImage('assets/icons/github.png'),
                            size: 44,
                          ),
                        ],
                      ),
                      onPressed: () {
                        launchUrl(Uri.parse(
                            'https://github.com/SamuelXimenes27/myPortfolio'));
                      },
                    ),
                    CardProject(
                      hasImagePath: false,
                      cardColorImage: Colors.red,
                      titleProject: 'PokedexApp',
                      descriptionProject:
                          'App feito para por em prática o consumo de API, fornecendo dados de todos os pokemons e suas características',
                      iconsTecnologys: Row(
                        children: const [
                          ImageIcon(
                            AssetImage('assets/icons/flutter.png'),
                            size: 44,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ImageIcon(
                            AssetImage('assets/icons/api.png'),
                            size: 44,
                          ),
                        ],
                      ),
                      onPressed: () {
                        launchUrl(Uri.parse(
                            'https://github.com/SamuelXimenes27/pokedexApp'));
                      },
                    ),
                    CardProject(
                      pathCardImage: 'assets/images/lapiscoApp.png',
                      fitImage: BoxFit.contain,
                      titleProject: 'Lapisco',
                      descriptionProject:
                          'App simples no qual consome a RandomUser.API e mostrando os dados tratados fornecidos por ela. Feito para o processo seletivo do Lapisco, laboratório no qual estou atualmente.',
                      iconsTecnologys: Row(
                        children: const [
                          ImageIcon(
                            AssetImage('assets/icons/flutter.png'),
                            size: 44,
                          ),
                          ImageIcon(
                            AssetImage('assets/icons/api.png'),
                            size: 44,
                          ),
                        ],
                      ),
                      onPressed: () {
                        launchUrl(Uri.parse(
                            'https://github.com/SamuelXimenes27/Lapisco'));
                      },
                    ),
                    CardProject(
                      pathCardImage: 'assets/images/expenseApp.png',
                      fitImage: BoxFit.contain,
                      titleProject: 'ExpenseApp',
                      descriptionProject:
                          'App feito para controle de despesas semanais com simples gráfico feito em puro Flutter.',
                      iconsTecnologys: Row(
                        children: const [
                          ImageIcon(
                            AssetImage('assets/icons/flutter.png'),
                            size: 44,
                          ),
                        ],
                      ),
                      onPressed: () {
                        launchUrl(Uri.parse(
                            'https://github.com/SamuelXimenes27/expensesApp'));
                      },
                    ),
                  ],
                )
              : Column(
                  children: [
                    CardProject(
                      titleProject: 'My WebPortfolio (Este Projeto)',
                      descriptionProject:
                          'Projeto desenvolvido para usar como portfolio, falar um pouco sobre mim e mostrar meus projetos feitos.',
                      pathCardImage: 'assets/images/webPortfolio.png',
                      bottomPaddingDescription: 40,
                      iconsTecnologys: Row(
                        children: const [
                          ImageIcon(
                            AssetImage('assets/icons/flutter.png'),
                            size: 44,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ImageIcon(
                            AssetImage('assets/icons/github.png'),
                            size: 44,
                          ),
                        ],
                      ),
                      onPressed: () {
                        launchUrl(Uri.parse(
                            'https://github.com/SamuelXimenes27/myPortfolio'));
                      },
                    ),
                    SizedBox(
                      height: _size.height * 0.02,
                    ),
                    CardProject(
                      hasImagePath: false,
                      cardColorImage: Colors.red,
                      titleProject: 'PokedexApp',
                      descriptionProject:
                          'App feito para por em prática o consumo de API, fornecendo dados de todos os pokemons e suas características',
                      iconsTecnologys: Row(
                        children: const [
                          ImageIcon(
                            AssetImage('assets/icons/flutter.png'),
                            size: 44,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ImageIcon(
                            AssetImage('assets/icons/api.png'),
                            size: 44,
                          ),
                        ],
                      ),
                      onPressed: () {
                        launchUrl(Uri.parse(
                            'https://github.com/SamuelXimenes27/pokedexApp'));
                      },
                    ),
                    SizedBox(
                      height: _size.height * 0.02,
                    ),
                    CardProject(
                      pathCardImage: 'assets/images/lapiscoApp.png',
                      fitImage: BoxFit.contain,
                      titleProject: 'Lapisco',
                      descriptionProject:
                          'App simples no qual consome a RandomUser.API e mostrando os dados tratados fornecidos por ela. Feito para o processo seletivo do Lapisco, laboratório no qual estou atualmente.',
                      iconsTecnologys: Row(
                        children: const [
                          ImageIcon(
                            AssetImage('assets/icons/flutter.png'),
                            size: 44,
                          ),
                          ImageIcon(
                            AssetImage('assets/icons/api.png'),
                            size: 44,
                          ),
                        ],
                      ),
                      onPressed: () {
                        launchUrl(Uri.parse(
                            'https://github.com/SamuelXimenes27/Lapisco'));
                      },
                    ),
                    SizedBox(
                      height: _size.height * 0.02,
                    ),
                    CardProject(
                      pathCardImage: 'assets/images/expenseApp.png',
                      fitImage: BoxFit.contain,
                      titleProject: 'ExpenseApp',
                      descriptionProject:
                          'App feito para controle de despesas semanais com simples gráfico feito em puro Flutter.',
                      iconsTecnologys: Row(
                        children: const [
                          ImageIcon(
                            AssetImage('assets/icons/flutter.png'),
                            size: 44,
                          ),
                        ],
                      ),
                      onPressed: () {
                        launchUrl(Uri.parse(
                            'https://github.com/SamuelXimenes27/expensesApp'));
                      },
                    ),
                  ],
                ),
        )
      ],
    );
  }
}
