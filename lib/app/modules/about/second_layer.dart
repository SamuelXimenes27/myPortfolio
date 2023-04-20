import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../shared/widgets/buttons/elevated_button.dart';
import '../../shared/widgets/layers/layer_title.dart';
import '../../shared/constants/string_const.dart';

class SecondLayer extends StatefulWidget {
  const SecondLayer({Key? key}) : super(key: key);

  @override
  State<SecondLayer> createState() => _SecondLayerState();
}

class _SecondLayerState extends State<SecondLayer> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Column(
      children: [
        _size.width < 891
            ? SizedBox(
                height: _size.height * 0.04,
              )
            : Container(),
        const LayerTitle(
          title: '${StringConst.secondLayerTitle}\n',
          subTitle: '${StringConst.secondLayerSubTitle}\n',
        ),
        _size.width > 891
            ? SizedBox(
                width: _size.width * 1,
                height: _size.height * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox.fromSize(
                          child: const Image(
                            image: AssetImage('assets/images/me.jpeg'),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: _size.width / 2,
                            child: Text(
                              StringConst.secondLayerTextAbout,
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2,
                                height: _size.height * 0.002,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: _size.height / 50),
                          child: SizedBox(
                            width: _size.width / 10,
                            height: _size.height / 14,
                            child: CustomElevatedButton(
                              onPressed: () {
                                launchUrl(
                                  Uri.parse(
                                      'https://doc-08-14-docs.googleusercontent.com/docs/securesc/6hmevdgdvhr9th8u806q5geli0lblr9m/n0ijr3q59eaf8co7ga5e3kseo6gq6gn5/1660856625000/17325119351717924129/17325119351717924129/1vxGGd-IUXiU57jh1O_n--L9NsfGftpVi?e=download&ax=AI9vYm6uE-Nry87fIq03-qepdgyP0Wk9Z5ub4ONR0_nGbcboLwg1eqPfDxBmb5baI7qFhxetb1q5ucvUIbjGYuBO15whGKtcVqveHlLvLyjFW85mfhE1tK6m2ViQRp7HMQvowajZlzMqIGuy41utHD03iSVCbV8skRFCFSgH5A6KmGNq1X-JWAEmW9MWQ-2lsdIQdHHKYFjuYO1bI-FR08fVyQI-RiAV-jiyerbBCrF5pKLV-8RJEa3DTcGs8-OFN4m100NUKPCrz7kO-Po4feoKFuVytKWmPZk2iD8ZOEVGqM2i1QACO1v9yu0TA67Ikao1BFkKbK3Tmy7JyMrVrkF_RiGL_m9ySAb3cg74OMrSGN-EIUmzzf0LJwAujZnYnbUnchcxlBuFo5FFtbP0JrOr0Fs-lcFMIawWrnO0efy0-f92Y-RH5FArVUL82fte4U9BGaJb7ox2R_dbrhEYRJpKI-RLIG2NfI_V6qegm8fIjHRyyaCSsk70yM1Q8GF0N8mILXRifRvEqVtoOvx10Dh34OeipVvfPStkRYpzoSNhXwnl-Wje8K8bOr1Wz-m_HE62JRxUDOftutjCPSGIX9abmFEf4Z9TDBcoNL5WNQssr2QHkC1t4BEqwtfiiuN3Ibr_mSV2xx4ZhQtLcE3nBA4Xd8oPDH7Mx75vyLO2zQLcTjV4C3MLuxezweGwHY34mh3aqyhLwAoHNa35n831LJwlrUSy2tWHZuddybGVNYTX7wjv4lyXPGCOulC8JE26Qn6dktpd5OdhcEfmMsxkfnN7iBOFEQxc9xQukDPhFwwkdsPp3tOFdWDhBVMOk_26I3Oruriqe38mVhjAmGa0zyb8pyN7tX4cFky1&uuid=c5e0cca8-e3a9-4358-879f-74142998ba71&authuser=2'),
                                );
                              },
                              textButton: StringConst.secondLayerResume,
                              borderRadiusValue: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            : Column(
                children: [
                  SizedBox(
                    height: _size.height * 0.02,
                  ),
                  SizedBox(
                    width: _size.width * 0.7,
                    height: _size.height * 1.4,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: SizedBox.fromSize(
                              child: Image(
                                image:
                                    const AssetImage('assets/images/me.jpeg'),
                                width: _size.width * 0.7,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                width: _size.width,
                                child: Text(
                                  StringConst.secondLayerTextAbout,
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2,
                                    height: _size.height * 0.002,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: _size.height / 50),
                              child: SizedBox(
                                width: _size.width / 2,
                                height: _size.height / 14,
                                child: CustomElevatedButton(
                                  onPressed: () {
                                    launchUrl(
                                      Uri.parse(
                                          'https://doc-08-14-docs.googleusercontent.com/docs/securesc/6hmevdgdvhr9th8u806q5geli0lblr9m/n0ijr3q59eaf8co7ga5e3kseo6gq6gn5/1660856625000/17325119351717924129/17325119351717924129/1vxGGd-IUXiU57jh1O_n--L9NsfGftpVi?e=download&ax=AI9vYm6uE-Nry87fIq03-qepdgyP0Wk9Z5ub4ONR0_nGbcboLwg1eqPfDxBmb5baI7qFhxetb1q5ucvUIbjGYuBO15whGKtcVqveHlLvLyjFW85mfhE1tK6m2ViQRp7HMQvowajZlzMqIGuy41utHD03iSVCbV8skRFCFSgH5A6KmGNq1X-JWAEmW9MWQ-2lsdIQdHHKYFjuYO1bI-FR08fVyQI-RiAV-jiyerbBCrF5pKLV-8RJEa3DTcGs8-OFN4m100NUKPCrz7kO-Po4feoKFuVytKWmPZk2iD8ZOEVGqM2i1QACO1v9yu0TA67Ikao1BFkKbK3Tmy7JyMrVrkF_RiGL_m9ySAb3cg74OMrSGN-EIUmzzf0LJwAujZnYnbUnchcxlBuFo5FFtbP0JrOr0Fs-lcFMIawWrnO0efy0-f92Y-RH5FArVUL82fte4U9BGaJb7ox2R_dbrhEYRJpKI-RLIG2NfI_V6qegm8fIjHRyyaCSsk70yM1Q8GF0N8mILXRifRvEqVtoOvx10Dh34OeipVvfPStkRYpzoSNhXwnl-Wje8K8bOr1Wz-m_HE62JRxUDOftutjCPSGIX9abmFEf4Z9TDBcoNL5WNQssr2QHkC1t4BEqwtfiiuN3Ibr_mSV2xx4ZhQtLcE3nBA4Xd8oPDH7Mx75vyLO2zQLcTjV4C3MLuxezweGwHY34mh3aqyhLwAoHNa35n831LJwlrUSy2tWHZuddybGVNYTX7wjv4lyXPGCOulC8JE26Qn6dktpd5OdhcEfmMsxkfnN7iBOFEQxc9xQukDPhFwwkdsPp3tOFdWDhBVMOk_26I3Oruriqe38mVhjAmGa0zyb8pyN7tX4cFky1&uuid=c5e0cca8-e3a9-4358-879f-74142998ba71&authuser=2'),
                                    );
                                  },
                                  textButton: StringConst.secondLayerResume,
                                  borderRadiusValue: 10.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
      ],
    );
  }
}
