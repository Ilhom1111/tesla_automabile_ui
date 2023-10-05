import 'package:flutter/material.dart';
import 'package:tesla_automabile_app/services/constants/fonts.dart';
import 'package:tesla_automabile_app/services/constants/images.dart';
import 'package:tesla_automabile_app/services/constants/strings.dart';
import 'package:tesla_automabile_app/views/tesla_car/next_button.dart';
import 'package:tesla_automabile_app/views/tesla_exterior/tesla_colors.dart';

class TeslaExterior extends StatefulWidget {
  const TeslaExterior({super.key});

  @override
  State<TeslaExterior> createState() => _TeslaExteriorState();
}

class _TeslaExteriorState extends State<TeslaExterior> {
  List<bool> buttonColor = [false, false, false, true, false];

  AssetImage image = CustomImages.autoWhite;

  void colorButton1() {
    image = CustomImages.teslaBlack;
    buttonColor[0] = true;
    buttonColor[1] = false;
    buttonColor[2] = false;
    buttonColor[3] = false;
    buttonColor[4] = false;

    setState(() {});
  }

  void colorButton2() {
    image = CustomImages.teslaBlue;
    buttonColor[0] = false;
    buttonColor[1] = true;
    buttonColor[2] = false;
    buttonColor[3] = false;
    buttonColor[4] = false;

    setState(() {});
  }

  void colorButton3() {
    image = CustomImages.teslaBlue;
    buttonColor[0] = false;
    buttonColor[1] = false;
    buttonColor[2] = true;
    buttonColor[3] = false;
    buttonColor[4] = false;

    setState(() {});
  }

  void colorButton4() {
    image = CustomImages.autoWhite;
    buttonColor[0] = false;
    buttonColor[1] = false;
    buttonColor[2] = false;
    buttonColor[3] = true;
    buttonColor[4] = false;

    setState(() {});
  }

  void colorButton5() {
    image = CustomImages.autoRed;
    buttonColor[0] = false;
    buttonColor[1] = false;
    buttonColor[2] = false;
    buttonColor[3] = false;
    buttonColor[4] = true;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Expanded(
            flex: 11,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18, top: 18),
                    child: Text(
                      Strings.selectColor,
                      style: TextStyle(
                          fontFamily: Fonts.gothamPro,
                          color: const Color(0xffA4B0BC),
                          fontSize: 15),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      height: 220,
                      width: 340,
                      child: Image(
                        image: image,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: Strings.pearlWhite,
                            style: TextStyle(
                              fontFamily: Fonts.gothamPro,
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          TextSpan(
                            text: Strings.sum3,
                            style: TextStyle(
                              height: 1.5,
                              fontFamily: Fonts.gothamPro,
                              color: const Color(0xffD01000),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TeslaColors.colorsTesla(
                            color: Colors.black,
                            funksiya: colorButton1,
                            tf: buttonColor[0]),
                        TeslaColors.colorsTesla(
                            color: const Color(0xff45525C),
                            funksiya: colorButton2,
                            tf: buttonColor[1]),
                        TeslaColors.colorsTesla(
                            color: const Color(0xff044BB6),
                            funksiya: colorButton3,
                            tf: buttonColor[2]),
                        TeslaColors.colorsTesla(
                            color: Colors.white,
                            funksiya: colorButton4,
                            tf: buttonColor[3]),
                        TeslaColors.colorsTesla(
                            color: const Color(0xffD01000),
                            funksiya: colorButton5,
                            tf: buttonColor[4]),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Divider(
                    endIndent: 25,
                    indent: 25,
                    thickness: 1.5,
                    color: Color(0xffCFD3D9),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Text(
                      Strings.performanceWheels,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: Fonts.gothamPro,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Text(
                      Strings.carbonFiber,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: Fonts.gothamPro,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Card(
              margin: EdgeInsets.zero,
              elevation: 10,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Container(
                alignment: Alignment.bottomCenter,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: NextButton(sum: Strings.sum4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
