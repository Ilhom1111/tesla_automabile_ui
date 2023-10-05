import 'package:flutter/material.dart';

import '../../services/constants/fonts.dart';
import '../../services/constants/strings.dart';

class TeslaInfo extends StatelessWidget {
  const TeslaInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      Strings.teslaInfo,
      style: TextStyle(
        height: 1.4,
        fontFamily: Fonts.gothamPro,
        color: const Color(0xff979797),
        fontSize: 11,
      ),
    );
  }
}
