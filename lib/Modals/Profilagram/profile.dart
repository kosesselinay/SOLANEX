import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttericon/brandico_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nftmarket/Modals/Profilagram/Subpages/update_user_data.dart';
import 'package:nftmarket/Providers/mint_page_provider.dart';
import 'package:nftmarket/Providers/user_data_edit.dart';
import 'package:nftmarket/Utility/util.dart';

import '../../Providers/util_provider.dart';

class Profile extends ConsumerWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Utility util = ref.read(utilProvider(context));
    ref.watch(profileUpdatedStateProvider);
    ref.watch(mintedImageProvider);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile",
            style: GoogleFonts.orbitron(color: Colors.white),
          ),
          toolbarHeight: 50,
          actions: [
            InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const UpdateUserData())),
              child: const Icon(
                Icons.edit,
                size: 20,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.share,
              size: 20,
            ),
            SizedBox(
              width: 10,
            ),
          ],
          elevation: 5,
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
            child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                fit: StackFit.loose,
                children: [
                  // Display the background image
                  Container(
                    margin: const EdgeInsets.all(20),
                    height: util.height / 6,
                    width: util.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'assets/images/banner.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  // Display the CircleImage
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 50,
                      backgroundImage: FileImage(
                          (File(ref
                              .read(profileImageProvider.notifier)
                              .state
                              .path)),
                          scale: 0.5),
                    ),
                  )
                ],
              ),
              SizedBox(height: util.height / 22),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ref.read(nicknameProvider.notifier).state,
                    style: GoogleFonts.orbitron(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    CupertinoIcons.check_mark_circled_solid,
                    size: 25,
                    color: Color.fromARGB(255, 29, 190, 115),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Text(ref.read(biographyProvider.notifier).state,
                    textScaleFactor: 0.8,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(color: Colors.white)),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                const Icon(Brandico.instagram_1,
                    size: 20, color: Color.fromARGB(255, 29, 190, 115)),
                const Icon(Brandico.twitter_bird,
                    size: 20, color: Color.fromARGB(255, 29, 190, 115)),
                const Icon(Brandico.linkedin_1,
                    size: 20, color: Color.fromARGB(255, 29, 190, 115)),
              ]),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                indent: 10,
                endIndent: 10,
                thickness: 0.5,
                color: Colors.white30,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("0",
                          textScaleFactor: 1.2,
                          style: GoogleFonts.audiowide(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text("Items",
                          textScaleFactor: 0.8,
                          style: GoogleFonts.audiowide(
                              fontWeight: FontWeight.normal,
                              color: Colors.white)),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/sol.png",
                            width: 20,
                            height: 20,
                          ),
                          Text("0.0",
                              textScaleFactor: 1.2,
                              style: GoogleFonts.audiowide(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                      Text("Floor Price",
                          textScaleFactor: 0.8,
                          style: GoogleFonts.audiowide(
                              fontWeight: FontWeight.normal,
                              color: Colors.white)),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("0",
                          textScaleFactor: 1.2,
                          style: GoogleFonts.audiowide(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text("Total Volume",
                          textScaleFactor: 0.8,
                          style: GoogleFonts.audiowide(
                              fontWeight: FontWeight.normal,
                              color: Colors.white)),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DefaultTabController(
                  length: 2,
                  child: TabBar(
                    indicatorColor: Colors.green,
                    onTap: (index) => print("index"),
                    tabs: [
                      Tab(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                CupertinoIcons.collections_solid,
                                size: 12,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Items",
                                  textScaleFactor: 0.8,
                                  style: GoogleFonts.audiowide(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white))
                            ]),
                      ),
                      Tab(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                CupertinoIcons.chart_bar_circle,
                                size: 12,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Activity",
                                  textScaleFactor: 0.8,
                                  style: GoogleFonts.audiowide(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white))
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
              if (ref.read(assetMintedProvider.notifier).state)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.file(
                            ref.read(mintedImageProvider),
                            fit: BoxFit.contain,
                            height: 200,
                            width: 200,
                          )),
                      Column(
                        children: [
                          Text(
                            ref.read(itemNameProvider),
                            style: GoogleFonts.audiowide(color: Colors.white),
                          ),
                          Text(
                            ref.read(itemDescriptionProvider),
                            overflow: TextOverflow.fade,
                            style: GoogleFonts.audiowide(color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                )
            ],
          ),
        )));
  }
}
