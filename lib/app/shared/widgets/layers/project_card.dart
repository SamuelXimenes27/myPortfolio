import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio_web/app/shared/constants/colors_const.dart';
import 'package:portifolio_web/app/shared/widgets/buttons/elevated_button.dart';

class CardProject extends StatefulWidget {
  final bool hasImagePath;
  final String? pathCardImage;
  final String? cardTitleImage;
  final Color? cardColorImage;
  final String? titleProject;
  final String descriptionProject;
  final BoxFit fitImage;
  final Alignment alignmentDescription;
  final double bottomPaddingDescription;
  final dynamic Function()? onPressed;
  var iconsTecnologys;
  CardProject({
    Key? key,
    this.hasImagePath = true,
    this.titleProject,
    required this.descriptionProject,
    this.pathCardImage,
    required this.iconsTecnologys,
    this.cardTitleImage,
    this.cardColorImage,
    this.fitImage = BoxFit.fill,
    this.alignmentDescription = Alignment.center,
    this.bottomPaddingDescription = 0,
    this.onPressed,
  }) : super(key: key);

  @override
  State<CardProject> createState() => _CardProjectState();
}

class _CardProjectState extends State<CardProject> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return SizedBox(
      height: _size.height * 0.57,
      width: _size.width * 0.4,
      child: Card(
        borderOnForeground: true,
        child: Column(
          children: [
            widget.hasImagePath
                ? SizedBox(
                    width: _size.width * 1,
                    height: _size.height * 0.2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10), // Image border
                      child: Image(
                        image: AssetImage(widget.pathCardImage!),
                        fit: widget.fitImage,
                      ),
                    ),
                  )
                : SizedBox(
                    width: _size.width * 1,
                    height: _size.height * 0.2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10), // Image border
                      child: Container(
                        color: widget.cardColorImage,
                        child: Center(
                          child: Text(
                            widget.titleProject!.isEmpty
                                ? widget.cardTitleImage!
                                : widget.titleProject!,
                            style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: ColorsConst.primary1),
                          ),
                        ),
                      ),
                    ),
                  ),
            SizedBox(
              height: _size.height * 0.01,
            ),
            SizedBox(
              width: _size.width * 1,
              height: _size.height * 0.04,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.titleProject!,
                    overflow: TextOverflow.visible,
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: ColorsConst.primary1),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: _size.width * 1,
              height:
                  _size.width > 600 ? _size.height * 0.08 : _size.height * 0.2,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 20, bottom: widget.bottomPaddingDescription),
                child: Align(
                  alignment: widget.alignmentDescription,
                  child: Text(
                    widget.descriptionProject,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: _size.height * 0.015,
            ),
            SizedBox(
              width: _size.width * 1,
              height: _size.height * 0.04,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Tecnologias Utilizadas',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: ColorsConst.primary1),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: _size.width * 1,
              height: _size.height * 0.08,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      widget.iconsTecnologys,
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: _size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width:
                      _size.width > 600 ? _size.width * 0.09 : _size.width * 1,
                  height: _size.width > 600
                      ? _size.height * 0.04
                      : _size.height * 0.06,
                  child: CustomElevatedButton(
                    borderRadiusValue: 10.0,
                    textButton: 'Visualizar',
                    onPressed: widget.onPressed,
                  ),
                ),
              ),
            ),
            _size.width < 600
                ? SizedBox(
                    height: _size.height * 0.015,
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
