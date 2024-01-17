class StringConst {
  static final birthday = DateTime(2000, 10, 27);
  static final age = _calculateAge();

  static int _calculateAge() {
    final now = DateTime.now();
    int age = now.year - birthday.year;
    if (now.month < birthday.month ||
        (now.month == birthday.month && now.day < birthday.day)) {
      age--;
    }
    return age;
  }

  static const String myName = 'Samuel Ximenes';
  static const String contact = 'Contato';

  static const String appBarHome = 'Home';
  static const String appBarAbout = 'Sobre';
  static const String appBarSkills = 'Habilidades';
  static const String appBarProjects = 'Projetos';
  static const String sideBarTitle = 'Meu Portifolio';

  static const String firstLayerHi = 'Olá, eu sou';
  static const String firstLayerDev = 'Desenvolvedor Mobile';

  static const String secondLayerTitle = 'Sobre mim';
  static const String secondLayerSubTitle = 'Introdução';
  static String secondLayerTextAbout =
      'Tenho $age anos, fui estudante de Engenharia da Computação no IFCE, até o 7ª semestre e me mudei para Portugal em Março de 2023. \n\nMeu primeiro contato com desenvolvimento foi em meados de 2012 quando editava códigos de jogos vazados em fórum, ao quebrar a cabeça durante muito anos sem saber de fato programar e o que de fato era desenvolver, decidi cursar algo na área e acabei passando para o IFCE. \n\nTenho 1 ano de experiência profissional na área trabalhando como desenvolvedor no Lapisco, um dos melhores laboratórios de desenvolvimento do estado do Ceará.';
  static const String secondLayerResume = 'Currículo';

  static const String thirdLayerSkills = 'Habilidades';
  static const String thirdLayerProfessionalSkills =
      'Habilidades Profissionais';

  static const String fourthLayerTitle = 'Projetos';
  static const String fourthLayerSubTitle = 'Meus Projetos';
}
