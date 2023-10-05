import 'package:flutter/material.dart';
import 'package:tesla_automabile_app/services/constants/fonts.dart';
import 'package:tesla_automabile_app/services/constants/images.dart';

class TeslaPay extends StatefulWidget {
  const TeslaPay({super.key});

  @override
  State<TeslaPay> createState() => _TeslaPayState();
}

class _TeslaPayState extends State<TeslaPay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: CustomImages.autoRed2,
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.35,
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 55,
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image(
                image: CustomImages.logoWhite,
                width: 110,
              ),
            ),
          ),
          Column(
            children: [
              const Spacer(flex: 7),
              Expanded(
                flex: 4,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(34),
                      topRight: Radius.circular(34),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Spacer(flex: 2),
                      Text(
                        'Summary',
                        style: TextStyle(
                          fontFamily: Fonts.gothamPro,
                          color: const Color(0xffA4B0BC),
                          fontSize: 15,
                        ),
                      ),
                      const Spacer(flex: 2),
                      Text(
                        'Your Model Y',
                        style: TextStyle(
                          fontFamily: Fonts.gothamPro,
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        '\$60,700',
                        style: TextStyle(
                          fontFamily: Fonts.gothamPro,
                          color: Colors.white.withOpacity(.8),
                          fontSize: 20,
                        ),
                      ),
                      const Spacer(flex: 5),
                      Container(
                        alignment: Alignment.center,
                        width: 240,
                        height: 54,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(27),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.apple,
                              color: Colors.white,
                              size: 30,
                            ),
                            Text(
                              'Pay',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: Fonts.gothamPro,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Spacer(flex: 1),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
