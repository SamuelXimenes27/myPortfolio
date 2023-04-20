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
      'hasImagePath': true,
      'cardColorImage': Colors.red,
      'title': 'My WebPortfolio (Este Projeto)',
      'description':
          'Projeto desenvolvido para usar como portfolio, falar um pouco sobre mim e mostrar meus projetos feitos.',
      'pathImage': 'assets/images/webPortfolio.png',
      'icons': Row(
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
      'link': 'https://github.com/SamuelXimenes27/myPortfolio',
      'fit': BoxFit.fill
    },
    {
      'hasImagePath': false,
      'cardColorImage': Colors.red,
      'title': 'PokedexApp',
      'description':
          'App feito para por em prática o consumo de API, fornecendo dados de todos os pokemons e suas características.',
      'pathImage': '',
      'icons': Row(
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
      'link': 'https://github.com/SamuelXimenes27/pokedexApp',
      'fit': BoxFit.none
    },
    {
      'hasImagePath': true,
      'cardColorImage': Colors.red,
      'title': 'Lapisco',
      'description':
          'App simples no qual consome a RandomUser.API e mostrando os dados tratados fornecidos por ela. Feito para o processo seletivo do Lapisco, laboratório no qual estou atualmente.',
      'pathImage': 'assets/images/lapiscoApp.png',
      'icons': Row(
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
      'link': 'https://github.com/SamuelXimenes27/Lapisco',
      'fit': BoxFit.contain
    },
    {
      'hasImagePath': true,
      'cardColorImage': Colors.red,
      'title': 'ExpenseApp',
      'description':
          'App feito para controle de despesas semanais com simples gráfico feito em puro Flutter.',
      'pathImage': 'assets/images/expenseApp.png',
      'icons': Row(
        children: const [
          ImageIcon(
            AssetImage('assets/icons/flutter.png'),
            size: 44,
          ),
        ],
      ),
      'link': 'https://github.com/SamuelXimenes27/expensesApp',
      'fit': BoxFit.contain
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
                    children: projects.map((project) {
                      return CardProject(
                        hasImagePath: project['hasImagePath'],
                        cardColorImage: project['cardColorImage'],
                        titleProject: project['title'],
                        descriptionProject: project['description'],
                        pathCardImage: project['pathImage'],
                        iconsTecnologys: project['icons'],
                        onPressed: () {
                          launchUrl(Uri.parse(project['link']));
                        },
                        fitImage:
                            project['fit'] != null ? project['fit'] : null,
                      );
                    }).toList(),
                  )
                : Column(
                    children: projects.map((project) {
                      return CardProject(
                        hasImagePath: project['hasImagePath'],
                        cardColorImage: project['cardColorImage'],
                        titleProject: project['title'],
                        descriptionProject: project['description'],
                        pathCardImage: project['pathImage'],
                        iconsTecnologys: project['icons'],
                        onPressed: () {
                          launchUrl(Uri.parse(project['link']));
                        },
                      );
                    }).toList(),
                  ),
          ),
        ),
      ],
    );
  }
}
