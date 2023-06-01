import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../Providers/util_provider.dart';
import '../../Utility/util.dart';
import '../../main.dart';

class FirstSplashScreen extends ConsumerWidget {
  const FirstSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Utility util = ref.watch(utilProvider(context));
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: util.width,
        height: util.height,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/images/splash-bg.png", fit: BoxFit.cover),
          TextLiquidFill(
              text: "SOLANEX",
              waveColor: Color.fromARGB(255, 29, 190, 115),
              boxHeight: util.height / 10,
              loadDuration: Duration(seconds: 5),
              loadUntil: 0.9,
              textStyle: GoogleFonts.audiowide(fontSize: 30)),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              "The world's best digital marketplace\n for crypto collectibles and non-fungible tokens.",
              textAlign: TextAlign.center,
              textScaleFactor: 1,
              style: GoogleFonts.raleway(color: Colors.white54),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () => print("sa"),
                child: Text(
                  "Skip",
                  style: GoogleFonts.orbitron(color: Colors.white),
                ),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MarketplaceMain(),
                  ),
                  (route) => false,
                ),
                //               transition: Transition.leftToRight),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),
                child: Text(
                  "Next",
                  style: GoogleFonts.orbitron(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
