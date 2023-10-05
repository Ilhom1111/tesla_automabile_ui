import 'package:flutter/material.dart';

import '../../services/constants/fonts.dart';
import '../../services/constants/strings.dart';

class MphTextRich extends StatelessWidget {
  const MphTextRich({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: Strings.secund,
                  style: TextStyle(
                    fontFamily: Fonts.gothamPro,
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextSpan(
                  text: Strings.mph060,
                  style: TextStyle(
                    height: 1.4,
                    fontFamily: Fonts.gothamPro,
                    color: Colors.black,
                    fontSize: 9,
                    fontWeight: FontWeight.w900,
                  ),
                )
              ],
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            width: 1.5,
            height: 44,
            color: Colors.black.withOpacity(0.3),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: Strings.mph,
                  style: TextStyle(
                    fontFamily: Fonts.gothamPro,
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextSpan(
                  text: Strings.speed,
                  style: TextStyle(
                    height: 1.4,
                    fontFamily: Fonts.gothamPro,
                    color: Colors.black,
                    fontSize: 9,
                    fontWeight: FontWeight.w900,
                  ),
                )
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
