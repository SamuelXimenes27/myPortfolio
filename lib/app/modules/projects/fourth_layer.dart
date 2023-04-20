import 'package:flutter/material.dart';
import 'package:portifolio_web/app/shared/widgets/layers/project_card.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../shared/constants/string_const.dart';
import '../../shared/widgets/layers/layer_title.dart';

class FourthLayer extends StatefulWidget {
  const FourthLayer({Key? key}) : super(key: key);

  @override
  State<FourthLayer> createState() => _FourthLayerState();
}

class _FourthLayerState extends State<FourthLayer> {
  final List<Map<String, dynamic>> projects = [
    {
      'title': 'Projeto 1',
      'description': 'Descrição do Projeto 1',
      'icon1': const Icon(Icons.code),
      'icon2': const Icon(Icons.android),
      'icon3': const Icon(Icons.color_lens),
    },
    {
      'title': 'Projeto 2',
      'description': 'Descrição do Projeto 2',
      'icon1': const Icon(Icons.code),
      'icon2': const Icon(Icons.android),
      'icon3': const Icon(Icons.color_lens),
    },
    {
      'title': 'Projeto 3',
      'description': 'Descrição do Projeto 3',
      'icon1': const Icon(Icons.code),
      'icon2': const Icon(Icons.android),
      'icon3': const Icon(Icons.color_lens),
    },
    {
      'title': 'Projeto 4',
      'description': 'Descrição do Projeto 4',
      'icon1': const Icon(Icons.code),
      'icon2': const Icon(Icons.android),
      'icon3': const Icon(Icons.color_lens),
    },
    {
      'title': 'Projeto 5',
      'description': 'Descrição do Projeto 5',
      'icon1': const Icon(Icons.code),
      'icon2': const Icon(Icons.android),
      'icon3': const Icon(Icons.color_lens),
    },
    {
      'title': 'Projeto 6',
      'description': 'Descrição do Projeto 6',
      'icon1': const Icon(Icons.code),
      'icon2': const Icon(Icons.android),
      'icon3': const Icon(Icons.color_lens),
    },
    {
      'title': 'Projeto 7',
      'description': 'Descrição do Projeto 7',
      'icon1': const Icon(Icons.code),
      'icon2': const Icon(Icons.android),
      'icon3': const Icon(Icons.color_lens),
    },
    {
      'title': 'Projeto 8',
      'description': 'Descrição do Projeto 8',
      'icon1': const Icon(Icons.code),
      'icon2': const Icon(Icons.android),
      'icon3': const Icon(Icons.color_lens),
    },
    {
      'title': 'Projeto 9',
      'description': 'Descrição do Projeto 9',
      'icon1': const Icon(Icons.code),
      'icon2': const Icon(Icons.android),
      'icon3': const Icon(Icons.color_lens),
    },
  ];

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
          width: _size.width * 1,
          height: _size.width > 950 ? _size.height * 1.3 : _size.height * 2.5,
          child: Center(
            child: _size.width > 950
                ? Wrap(
                    spacing: 8.0,
                    runSpacing: 8.0,
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
                  ),
          ),
        ),
      ],
    );
  }
}
