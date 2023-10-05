import 'package:flutter/material.dart';
import 'package:tesla_automabile_app/services/constants/images.dart';

import '../services/constants/fonts.dart';
import '../services/constants/strings.dart';
import '../views/tesla_car/next_button.dart';

class TeslaAutopilot extends StatefulWidget {
  const TeslaAutopilot({super.key});

  @override
  State<TeslaAutopilot> createState() => _TeslaAutopilotState();
}

class _TeslaAutopilotState extends State<TeslaAutopilot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image(
                image: CustomImages.becraund,
                fit: BoxFit.fitWidth,
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.5),
          ),
          Column(
            children: [
              const Spacer(flex: 7),
              Expanded(
                flex: 5,
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
                          Strings.autopilot,
                          style: TextStyle(
                            fontFamily: Fonts.gothamPro,
                            color: const Color(0xffA4B0BC),
                            fontSize: 17,
                            height: 0,
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
                                    text: 'Full Self-Driving\n',
                                    style: TextStyle(
                                      fontFamily: Fonts.gothamPro,
                                      color: Colors.black,
                                      fontSize: 17,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '\$5,000',
                                    style: TextStyle(
                                      fontFamily: Fonts.gothamPro,
                                      color: Colors.red,
                                      fontSize: 14,
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
                                    text: 'Autopilot\n',
                                    style: TextStyle(
                                      fontFamily: Fonts.gothamPro,
                                      color: Colors.grey.shade500,
                                      fontSize: 17,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "\$3,000",
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
                        child: Text(
                          "Atomatic driving from highway on-ramp\nto off-ramp including interchanges and\novertaking slower cars.",
                          style: TextStyle(
                            color: const Color(0xff979797),
                            fontFamily: Fonts.gothamPro,
                            height: 1.3,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const Spacer(flex: 2),
                      const NextButton(sum: '\$60,700'),
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
