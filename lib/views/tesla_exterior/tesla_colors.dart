import 'package:flutter/material.dart';

class TeslaColors {
  TeslaColors._();

  static Widget colorsTesla(
      {required Color color,
      required Function() funksiya,
      required bool tf,
      double size = 35}) {
    if (tf == true) {
      return Container(
        alignment: Alignment.center,
        width: size + 2,
        height: size + 2,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(19),
          border: Border.all(
            color: Colors.red,
            width: 2.5,
          ),
        ),
      );
    } else {
      return InkWell(
        onTap: funksiya,
        overlayColor:
            MaterialStateColor.resolveWith((states) => Colors.transparent),
        child: Container(
          alignment: Alignment.center,
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      );
    }
  }
}
