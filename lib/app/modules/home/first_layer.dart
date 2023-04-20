import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../shared/constants/colors_const.dart';
import '../../shared/constants/string_const.dart';
import '../../shared/widgets/buttons/elevated_button.dart';

class FirstLayer extends StatefulWidget {
  const FirstLayer({Key? key}) : super(key: key);

  @override
  State<FirstLayer> createState() => _FirstLayerState();
}

class _FirstLayerState extends State<FirstLayer> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: _size.width > 740 ? _size.width * 0.3 : _size.width * 0.12,
          height: _size.height * 0.75,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  launchUrl(
                      Uri.parse('https://www.linkedin.com/in/samuelximenes/'));
                },
                icon: const ImageIcon(
                  AssetImage('assets/icons/linkedin.png'),
                ),
                iconSize: _size.width > 740 ? 38 : 20,
              ),
              const SizedBox(
                height: 62,
              ),
              IconButton(
                onPressed: () {
                  launchUrl(
                      Uri.parse('https://www.github.com/SamuelXimenes27'));
                },
                icon: const ImageIcon(
                  AssetImage('assets/icons/github.png'),
                ),
                iconSize: _size.width > 740 ? 38 : 20,
              ),
              const SizedBox(
                height: 62,
              ),
              IconButton(
                onPressed: () {
                  launchUrl(Uri.parse('mailto:samuelximenes27@gmail.com'));
                },
                icon: const ImageIcon(
                  AssetImage('assets/icons/gmail.png'),
                ),
                iconSize: _size.width > 740 ? 38 : 20,
              ),
            ],
          ),
        ),
        SizedBox(
            width: _size.width * 0.7,
            height: _size.height * 0.8,
            child: _size.width > 740
                ? Row(
                    children: [
                      SizedBox(
                        width: _size.width * 0.3,
                        height: _size.height * 0.6,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                  text: TextSpan(
                                    text: '',
                                    children: [
                                      TextSpan(
                                        text: '${StringConst.firstLayerHi}\n',
                                        style: GoogleFonts.poppins(
                                          fontSize: 40,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 3,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '${StringConst.myName}\n',
                                        style: GoogleFonts.poppins(
                                          fontSize: 40,
                                          color: ColorsConst.infoColor1,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 3,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '${StringConst.firstLayerDev}\n',
                                        style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 2,
                                          height: _size.height * 0.002,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  width: _size.width / 10,
                                  height: _size.height / 14,
                                  child: CustomElevatedButton(
                                    onPressed: () {
                                      launchUrl(Uri.parse(
                                          'mailto:samuelximenes27@gmail.com'));
                                    },
                                    textButton: StringConst.contact,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: _size.width * 0.4,
                        height: _size.height * 0.6,
                        child: Image.asset(
                          'assets/images/perfil.png',
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      SizedBox(
                        width: _size.width * 1,
                        height: _size.height * 0.5,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                  text: TextSpan(
                                    text: '',
                                    children: [
                                      TextSpan(
                                        text: '${StringConst.firstLayerHi}\n',
                                        style: GoogleFonts.poppins(
                                          fontSize: 40,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 3,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '${StringConst.myName}\n',
                                        style: GoogleFonts.poppins(
                                          fontSize: 40,
                                          color: ColorsConst.infoColor1,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 3,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '${StringConst.firstLayerDev}\n',
                                        style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 2,
                                          height: _size.height * 0.002,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: _size.height * 0.02,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  width: _size.width > 740
                                      ? _size.width / 10
                                      : _size.width / 2,
                                  height: _size.width > 740
                                      ? _size.height / 14
                                      : _size.height / 18,
                                  child: CustomElevatedButton(
                                    borderRadiusValue: 10.0,
                                    fontSizeButton: 14.0,
                                    onPressed: () {
                                      launchUrl(Uri.parse(
                                          'mailto:samuelximenes27@gmail.com'));
                                    },
                                    textButton: StringConst.contact,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: _size.width * 0.8,
                        height: _size.height * 0.3,
                        child: Image.asset(
                          'assets/images/perfil.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ))
      ],
    );
  }
}
