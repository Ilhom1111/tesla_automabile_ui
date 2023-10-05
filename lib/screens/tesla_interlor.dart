import 'package:flutter/material.dart';
import 'package:tesla_automabile_app/services/constants/fonts.dart';
import 'package:tesla_automabile_app/services/constants/images.dart';
import 'package:tesla_automabile_app/views/tesla_car/next_button.dart';
import 'package:tesla_automabile_app/views/tesla_exterior/tesla_colors.dart';

import '../services/constants/strings.dart';

class TeslaInterlor extends StatefulWidget {
  const TeslaInterlor({super.key});

  @override
  State<TeslaInterlor> createState() => _TeslaInterlorState();
}

class _TeslaInterlorState extends State<TeslaInterlor> {
  bool colorButton1 = true, colorButton2 = false;
  AssetImage image = CustomImages.salonWhite;
  void buttonWhite() {
    image = CustomImages.salonWhite;
    colorButton1 = true;
    colorButton2 = false;
    setState(() {});
  }

  void buttonBlack() {
    image = CustomImages.salonBlack;
    colorButton1 = false;
    colorButton2 = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image(
              image: image,
              fit: BoxFit.fill,
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2.2,
            ),
          ),
          Column(
            children: [
              const Spacer(flex: 8),
              Expanded(
                flex: 7,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(flex: 4),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          Strings.selectInterior,
                          style: TextStyle(
                            fontFamily: Fonts.gothamPro,
                            color: const Color(0xffA4B0BC),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const Spacer(flex: 3),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: Strings.blackAndWhite,
                                    style: TextStyle(
                                      fontFamily: Fonts.gothamPro,
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                  TextSpan(
                                    text: Strings.sum5,
                                    style: TextStyle(
                                      fontFamily: Fonts.gothamPro,
                                      color: Colors.red,
                                      fontSize: 15,
                                      height: 1.3,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: Strings.allBlack,
                                    style: TextStyle(
                                      fontFamily: Fonts.gothamPro,
                                      color: Colors.grey.shade500,
                                      fontSize: 18,
                                    ),
                                  ),
                                  TextSpan(
                                    text: Strings.included,
                                    style: TextStyle(
                                      fontFamily: Fonts.gothamPro,
                                      color: const Color(0xffA4B0BC),
                                      fontSize: 15,
                                      height: 1.3,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(flex: 2),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            TeslaColors.colorsTesla(
                              color: const Color(0xffE2E2E2),
                              funksiya: buttonWhite,
                              tf: colorButton1,
                              size: 37,
                            ),
                            const SizedBox(width: 25),
                            TeslaColors.colorsTesla(
                              color: Colors.black,
                              funksiya: buttonBlack,
                              tf: colorButton2,
                              size: 37,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(flex: 4),
                      NextButton(sum: Strings.sum6),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
