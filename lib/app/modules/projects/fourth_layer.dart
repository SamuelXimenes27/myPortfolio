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
      'title': 'Conversor de Moeda',
      'description': 'App mobile de conversão de moedas feito com flutter.',
      'pathImage': [
        'assets/images/currency.png',
      ],
      'icons': const Row(
        children: [
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
      'link': 'https://github.com/SamuelXimenes27/conversor_moedas',
      'fit': BoxFit.contain
    },
    {
      'hasImagePath': true,
      'cardColorImage': Colors.red,
      'title': 'Simple Register',
      'description':
          'Projeto básico de cadastro feito em Flutter, feito somente para botar em prática alguma das coisas que aprendi com o framework.',
      'pathImage': [
        'assets/images/listUser.png',
        'assets/images/listUser2.png'
      ],
      'icons': const Row(
        children: [
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
      'link': 'https://github.com/SamuelXimenes27/simpleRegister',
      'fit': BoxFit.contain
    },
    {
      'hasImagePath': true,
      'cardColorImage': Colors.red,
      'title': 'Lapisco',
      'description':
          'App simples no qual consome a RandomUser.API e mostrando os dados tratados fornecidos por ela. Feito para o processo seletivo do Lapisco, laboratório no qual estou atualmente.',
      'pathImage': [
        'assets/images/lapiscoApp.png',
      ],
      'icons': const Row(
        children: [
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
      'pathImage': [
        'assets/images/expense.png',
        'assets/images/expense2.png',
        'assets/images/expense3.png',
      ],
      'icons': const Row(
        children: [
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
          height: _size.width > 950 ? _size.height * 1.3 : _size.height * 2.9,
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
                        fitImage: project['fit'],
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
