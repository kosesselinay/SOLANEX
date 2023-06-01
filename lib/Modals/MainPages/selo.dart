import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nftmarket/Modals/MainPages/MintSubPages/MintSubPages/buyNow.dart';
import 'package:nftmarket/Providers/user_data_edit.dart';
import '../../../Utility/util.dart';
import '../../Providers/util_provider.dart';
import 'dart:core';

import 'MintSubPages/makeAnOffer.dart';

// ignore: camel_case_types
class selo extends ConsumerWidget {
  const selo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Utility util = ref.read(utilProvider(context));

    return SafeArea(
      child: Scaffold(
        appBar: new AppBar(
          toolbarHeight: MediaQuery.of(context).size.height / 10,
          backgroundColor: Colors.black,
          actions: [
            Icon(
              Icons.favorite_border_outlined,
              color: Color.fromARGB(255, 186, 180, 162),
            ),
            SizedBox(
              width: 30,
            ),
            Icon(
              Icons.send,
              color: Color.fromARGB(255, 186, 180, 162),
            ),
            SizedBox(
              width: 30,
            ),
            Icon(
              Icons.more_horiz,
              color: Color.fromARGB(255, 186, 180, 162),
            ),
            SizedBox(
              width: 30,
            ),
          ],
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: util.height,
              width: util.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.network(
                          "https://visionarymarketing.com/wp-content/uploads/2022/02/art-nfts-auction-2021-esther-barend.jpg",
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width / 1.33,
                          height: MediaQuery.of(context).size.height / 2.5,
                          scale: 0.5),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Metafacely #1234",
                      textScaleFactor: 2.1,
                      overflow: TextOverflow.clip,
                      style: GoogleFonts.audiowide(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Metafacely NFT",
                      textScaleFactor: 1.4,
                      style: GoogleFonts.audiowide(
                          color: Colors.greenAccent,
                          fontSize: 10,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(
                    height: 2,
                    thickness: 0.5,
                    color: Color.fromARGB(255, 186, 180, 162),
                    indent: 10,
                    endIndent: 10,
                  ),
                  Container(
                      padding: EdgeInsets.all(15.0),
                      width: double.infinity,
                      color: Colors.black,
                      height: MediaQuery.of(context).size.height / 7,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Color.fromARGB(255, 186, 180, 162),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '123',
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 21,
                                    color: Color.fromARGB(255, 186, 180, 162),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Favorites',
                                  style: GoogleFonts.audiowide(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 186, 180, 162),
                                  ),
                                ),
                              ],
                            ),
                            VerticalDivider(
                              thickness: 0.5,
                              color: Color.fromARGB(255, 186, 180, 162),
                            ),
                            Column(children: [
                              Icon(
                                Icons.groups,
                                color: Color.fromARGB(255, 186, 180, 162),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '1',
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 21,
                                  color: Color.fromARGB(255, 186, 180, 162),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Owners',
                                style: GoogleFonts.audiowide(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 186, 180, 162),
                                ),
                              ),
                            ]),
                            VerticalDivider(
                              thickness: 0.5,
                              color: Color.fromARGB(255, 186, 180, 162),
                            ),
                            Column(children: [
                              Icon(
                                Icons.apps,
                                color: Color.fromARGB(255, 186, 180, 162),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '2',
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 21,
                                  color: Color.fromARGB(255, 186, 180, 162),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Editions',
                                style: GoogleFonts.audiowide(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 186, 180, 162),
                                ),
                              ),
                            ]),
                            VerticalDivider(
                              thickness: 0.5,
                              color: Color.fromARGB(255, 186, 180, 162),
                            ),
                            Column(children: [
                              Icon(
                                Icons.visibility,
                                color: Color.fromARGB(255, 186, 180, 162),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '3',
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 21,
                                  color: Color.fromARGB(255, 186, 180, 162),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Visitors',
                                style: GoogleFonts.audiowide(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 186, 180, 162),
                                ),
                              ),
                            ]),
                          ])),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height/6,
                    width: MediaQuery.of(context).size.width / 1.13,
                    decoration: BoxDecoration(
                     color: Color.fromARGB(255, 21, 21, 21), 
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(color: Color.fromARGB(255, 37, 36, 36)),
                    ),
                    child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          labelText:
                              "   Ends, Monday. 3 April 2023.19.00 PM GMT +07.00",
                          labelStyle: GoogleFonts.audiowide(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                          //normal border
                          //focused border
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomSheet: Container(
          height: MediaQuery.of(context).size.height / 10.5,
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: FloatingActionButton.extended(
                  heroTag: "tag1",
                  onPressed: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                      // ignore: prefer_const_constructors
                      builder: (context) => makeAnOffer(),
                    )),
                    // action code for button
                  },
                  label: Text(
                    'Make Offer',
                    style: GoogleFonts.audiowide(
                      textStyle: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  icon: const Icon(Icons.forward_to_inbox),
                  backgroundColor: Color.fromARGB(245, 76, 79, 78),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: FloatingActionButton.extended(
                  heroTag: "tag2",
                  onPressed: ()=> {
                    Navigator.of(context).push(MaterialPageRoute(
                      // ignore: prefer_const_constructors
                      builder: (context) => buyNow(),
                    )),
                  },
                  label: Center(
                    child: Text(
                      'Buy Now',
                      style: GoogleFonts.audiowide(
                        textStyle: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  icon: const Icon(Icons.wallet_outlined),
                  backgroundColor: Color.fromARGB(255, 29, 190, 115),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
