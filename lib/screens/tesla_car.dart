import 'package:flutter/material.dart';
import 'package:tesla_automabile_app/services/constants/images.dart';
import 'package:tesla_automabile_app/services/constants/strings.dart';
import 'package:tesla_automabile_app/views/tesla_car/next_button.dart';
import 'package:tesla_automabile_app/views/tesla_car/select_car_text.dart';

import '../views/tesla_car/mph_text_rich.dart';
import '../views/tesla_car/tesla_info.dart';
import '../views/tesla_car/textrich_performance.dart';

class TeslaCar extends StatefulWidget {
  const TeslaCar({super.key});

  @override
  State<TeslaCar> createState() => _TeslaCarState();
}

class _TeslaCarState extends State<TeslaCar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SelectCarText(),
                  Image(
                    image: CustomImages.autoRed,
                    width: 340,
                  ),
                  PerformatnceTextRech()
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Card(
              margin: EdgeInsets.zero,
              elevation: 10,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 22),
                    const MphTextRich(),
                    const SizedBox(height: 20),
                    const TeslaInfo(),
                    const SizedBox(height: 20),
                    NextButton(sum: Strings.sum)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
