import 'package:flutter/material.dart';

import '../../services/constants/fonts.dart';
import '../../services/constants/strings.dart';

class PerformatnceTextRech extends StatelessWidget {
  const PerformatnceTextRech({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: Strings.performance,
                  style: TextStyle(
                    fontFamily: Fonts.gothamPro,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                TextSpan(
                  text: Strings.sum,
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
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: Strings.long,
                  style: TextStyle(
                    fontFamily: Fonts.gothamPro,
                    color: Colors.black.withOpacity(0.40),
                    fontSize: 16,
                  ),
                ),
                TextSpan(
                  text: Strings.sum2,
                  style: TextStyle(
                    height: 1.5,
                    fontFamily: Fonts.gothamPro,
                    color: const Color(0xffA4B0BC),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
