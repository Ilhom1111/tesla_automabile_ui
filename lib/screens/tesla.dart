import 'package:flutter/material.dart';
import 'package:tesla_automabile_app/screens/tesla_car.dart';

import '../services/constants/fonts.dart';
import '../services/constants/images.dart';
import '../services/constants/strings.dart';
import 'tesla_autopilot.dart';
import 'tesla_exterior.dart';
import 'tesla_interlor.dart';

class Tesla extends StatefulWidget {
  const Tesla({super.key});

  @override
  State<Tesla> createState() => _TeslaState();
}

class _TeslaState extends State<Tesla> with TickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          elevation: 8,
          backgroundColor: Colors.white,
          leading: IconButton(
            splashRadius: 20,
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          title: const Image(
            image: CustomImages.logoBlack,
            width: 111,
          ),
          centerTitle: true,
          bottom: TabBar(
            controller: controller,
            labelColor: Colors.black,
            labelStyle: TextStyle(
              fontFamily: Fonts.gothamPro,
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
            labelPadding: const EdgeInsets.symmetric(horizontal: 8),
            isScrollable: true,
            indicatorColor: const Color(0xffD01000),
            indicatorPadding: const EdgeInsets.only(left: 9, right: 9),
            overlayColor:
                MaterialStateColor.resolveWith((states) => Colors.transparent),
            tabs: [
              Tab(
                text: Strings.car,
              ),
              Tab(
                text: Strings.exterior,
              ),
              Tab(
                text: Strings.interior,
              ),
              Tab(
                text: Strings.autopilot4,
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: const [
            TeslaCar(),
            TeslaExterior(),
            TeslaInterlor(),
            TeslaAutopilot(),
          ],
        ),
      ),
    );
  }
}
