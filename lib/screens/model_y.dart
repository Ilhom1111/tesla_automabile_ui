import 'package:flutter/material.dart';
import 'package:tesla_automabile_app/services/constants/images.dart';

import '../services/constants/strings.dart';
import 'tesla.dart';

class ModelY extends StatefulWidget {
  const ModelY({super.key});

  @override
  State<ModelY> createState() => _ModelYState();
}

class _ModelYState extends State<ModelY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Image(
          image: CustomImages.logoWhite,
          width: 110,
          color: Colors.white.withOpacity(0.45),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Spacer(flex: 4),
          Center(
            child: Text(
              Strings.tesla,
              style: TextStyle(
                fontFamily: "GothamPro",
                color: Colors.white.withOpacity(0.8),
                fontSize: 21,
              ),
            ),
          ),
          const Spacer(flex: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'del X',
                style: TextStyle(
                  fontFamily: "GothamPro",
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 17,
                ),
              ),
              const Text(
                'Model Y',
                style: TextStyle(
                  fontFamily: "GothamPro",
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
              Text(
                'Road',
                style: TextStyle(
                  fontFamily: "GothamPro",
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 17,
                ),
              ),
            ],
          ),
          const Spacer(flex: 3),
          Image(
            image: CustomImages.autoBlack,
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3.2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: Strings.mi300,
                        style: const TextStyle(
                          fontFamily: "GothamPro",
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: Strings.renge,
                        style: const TextStyle(
                          fontFamily: "GothamPro",
                          fontSize: 11,
                          height: 1.5,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: 2,
                  height: 50,
                  color: Colors.grey.withOpacity(0.6),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: Strings.awd,
                        style: const TextStyle(
                          fontFamily: "GothamPro",
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: Strings.dualMotor,
                        style: const TextStyle(
                          fontFamily: "GothamPro",
                          fontSize: 11,
                          height: 1.5,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const Spacer(flex: 2),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: Strings.acceleration,
                  style: TextStyle(
                    fontFamily: "GothamPro",
                    fontSize: 13,
                    color: Colors.white.withOpacity(0.6),
                  ),
                ),
                TextSpan(
                  text: Strings.mphin,
                  style: const TextStyle(
                    fontFamily: "GothamPro",
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(flex: 1),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: Strings.topSpeed,
                  style: TextStyle(
                    fontFamily: "GothamPro",
                    fontSize: 13,
                    color: Colors.white.withOpacity(0.6),
                  ),
                ),
                TextSpan(
                  text: Strings.upTo150Mph,
                  style: const TextStyle(
                    fontFamily: "GothamPro",
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(flex: 3),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Tesla(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(27),
                side: const BorderSide(
                  color: Colors.red,
                ),
              ),
              minimumSize: const Size(270, 54),
            ),
            child: Text(
              Strings.orderNow,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
