import 'package:flutter/material.dart';

import '../../screens/tesla_pay.dart';
import '../../services/constants/fonts.dart';
import '../../services/constants/strings.dart';

class NextButton extends StatelessWidget {
  final String sum;
  const NextButton({super.key, required this.sum});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            sum,
            style: TextStyle(
              color: Colors.black,
              fontFamily: Fonts.gothamPro,
              fontSize: 17,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TeslaPay(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.white,
              minimumSize: const Size(135, 50),
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(27),
              ),
            ),
            child: Text(
              Strings.next,
              style: TextStyle(
                color: Colors.black,
                fontFamily: Fonts.gothamPro,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
