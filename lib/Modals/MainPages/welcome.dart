import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nftmarket/Modals/SplashScreens/first_splash.dart';

import '../../Providers/util_provider.dart';
import '../../Utility/util.dart';
import '../../main.dart';

class WelcomeScreen extends ConsumerWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Utility util = ref.watch(utilProvider(context));
    Future.delayed(
        Duration(seconds: 7),
        () => {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const FirstSplashScreen()))
            });
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: util.width,
        height: util.height,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("SOLANEX",
              style: GoogleFonts.audiowide(
                  fontSize: 30, color: Color.fromARGB(255, 29, 190, 115))),
          SizedBox(
            height: 20,
          ),
          Text("Discover, Mint and Sell.",
              textScaleFactor: 1,
              style: GoogleFonts.orbitron(color: Colors.white54)),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              "The world's best digital marketplace\n for crypto collectibles and non-fungible tokens.",
              textAlign: TextAlign.center,
              textScaleFactor: 0.8,
              style: GoogleFonts.raleway(color: Colors.white54),
            ),
          ),
          SpinKitChasingDots(
            color: Color.fromARGB(255, 29, 190, 115),
          )
        ]),
      ),
    );
  }
}
