import 'package:flutter/material.dart';

import '../../services/constants/fonts.dart';
import '../../services/constants/strings.dart';

class SelectCarText extends StatelessWidget {
  const SelectCarText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, top: 18),
      child: Text(
        Strings.selectCar,
        style: TextStyle(
            fontFamily: Fonts.gothamPro,
            color: const Color(0xffA4B0BC),
            fontSize: 15),
      ),
    );
  }
}
