import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nftmarket/Modals/Profilagram/profile.dart';
import 'package:nftmarket/Providers/util_provider.dart';
import 'package:nftmarket/Providers/wallet_connection_provider.dart';
import 'package:flutter_phantom/flutter_phantom.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:nftmarket/Utility/util.dart';
import 'package:uni_links/uni_links.dart';
import 'package:url_launcher/url_launcher.dart';

class ConnectWalletState extends ConsumerStatefulWidget {
  ConnectWalletState({Key? key}) : super(key: key);

  @override
  ConsumerState<ConnectWalletState> createState() => _ConnectWalletState();
}

class _ConnectWalletState extends ConsumerState<ConnectWalletState> {
  final FlutterPhantom phantomConnect = FlutterPhantom(
    appUrl: "https://solana.com",
    deepLink: "app://test",
  );

  late StreamSubscription _sub;

  Future<void> initUniLinks() {
    // ... check initialUri

    // Attach a listener to the stream
    _sub = uriLinkStream.listen((Uri? uri) {
      print("test");

      // Use the uri and warn the user, if it is not correct
    }, onError: (err) {
      // Handle exception by warning the user their action did not succeed
    });

    return Future.value();

    // NOTE: Don't forget to call _sub.cancel() in dispose()
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //initUniLinks();
  }

  @override
  Widget build(BuildContext context) {
    Utility util = ref.watch(utilProvider(context));
    final test = ref.watch(WalletConnectionStateProvider);

    if (!test) {
      return Wallet(util: util, phantomConnect: phantomConnect, ref: ref);
    } else {
      return const Profile();
    }
  }
}

class Wallet extends StatelessWidget {
  const Wallet(
      {Key? key,
      required this.util,
      required this.phantomConnect,
      required this.ref})
      : super(key: key);

  final Utility util;
  final FlutterPhantom phantomConnect;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: util.width,
          height: util.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: util.height / 2.2,
                  width: util.width,
                  child: Padding(
                    padding: EdgeInsets.all(50),
                    child: Lottie.network(
                        'https://assets9.lottiefiles.com/packages/lf20_8btahzqu.json',
                        animate: true,
                        repeat: true,
                        fit: BoxFit.cover),
                  )),
              SizedBox(
                height: util.height / 12,
              ),
              Text("Connect Your Wallet",
                  textScaleFactor: 1.2,
                  style: GoogleFonts.orbitron(color: Colors.white54)),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Text(
                  "By connecting your wallet, you agree to our Terms of Service and Privacy Policy",
                  textAlign: TextAlign.center,
                  textScaleFactor: 0.9,
                  style: GoogleFonts.raleway(color: Colors.white54),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () async {
                        bool test = await launchUrl(
                            phantomConnect.generateConnectUri(
                                cluster: "devnet", redirect: "/onConnect"),
                            mode: LaunchMode.externalApplication);
                        ref.read(WalletConnectionStateProvider.notifier).state =
                            true;
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/phantom.png"),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Phantom",
                                    textScaleFactor: 0.8,
                                    style: GoogleFonts.orbitron(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ],
                            ),
                            Icon(
                              CupertinoIcons.forward,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(
                                      "assets/images/trust-wallet-bitcoin.png"),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Trust Wallet",
                                    textScaleFactor: 0.8,
                                    style: GoogleFonts.orbitron(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ],
                            ),
                            Icon(
                              CupertinoIcons.forward,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Dont't have a wallet yet?",
                          textScaleFactor: 0.6,
                          style: GoogleFonts.orbitron(color: Colors.white),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Learn more",
                          textScaleFactor: 0.6,
                          style: GoogleFonts.orbitron(
                              color: Color.fromARGB(255, 29, 190, 115)),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
