import 'dart:io';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:nftmarket/Modals/MainPages/MintSubPages/MintSubPages/approveCurrency.dart';

import '../../../Gateway/mint_new_nft.dart';
import '../../../Providers/mint_page_provider.dart';
import '../../../Providers/user_data_edit.dart';
import '../../../Utility/util.dart';

Future<XFile> _pickImage() async {
  try {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    return Future.value(image);
  } on Exception catch (_, ex) {
    return Future.error("Some error happened.");
  }
}

Scaffold finalMintPage(Utility util, WidgetRef ref, BuildContext context) {
  ref.watch(mintedImageProvider);

  return Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppBar(
      title: Text(
        "Mint Your Asset",
        style: GoogleFonts.orbitron(color: Colors.white),
      ),
      toolbarHeight: 50,
      elevation: 5,
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
    ),
    body: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(20),
        width: util.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                child: InkWell(
                    onTap: () async {
                      XFile selectedFile = await _pickImage();
                      ref.read(mintedImageProvider.notifier).state =
                          File(selectedFile.path);
                    },
                    child: ref
                            .read(mintedImageProvider.notifier)
                            .state
                            .path
                            .isEmpty
                        ? CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 100,
                            child: Lottie.network(
                                "https://assets8.lottiefiles.com/packages/lf20_NxAJBy.json"))
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.file(
                              File(ref
                                  .read(mintedImageProvider.notifier)
                                  .state
                                  .path),
                              width: util.width, // optional
                              fit: BoxFit.fitWidth,
                            ),
                          )),
                height: util.height / 4,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Image, Video, Audio or 3D Model",
              style: GoogleFonts.audiowide(
                  color: Color.fromARGB(255, 29, 190, 115)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "File types supported: JPG, PNG, GIF, SVG, MP4, WEBM, MP3, WAV, OGG, GLB, GLTF. Max size: 100MB",
              textScaleFactor: 0.8,
              style: GoogleFonts.nunito(color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Item Name',
                  style: GoogleFonts.audiowide(color: Colors.white),
                ),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    style: GoogleFonts.audiowide(color: Colors.white),
                    onChanged: (value) =>
                        ref.read(itemNameProvider.notifier).state = value,
                    decoration: InputDecoration(
                      isDense: true,
                      border: InputBorder.none,
                      hintText: ref.read(itemNameProvider.notifier).state,
                      hintStyle: GoogleFonts.audiowide(
                          color: Colors.white, fontSize: 15),
                      contentPadding: const EdgeInsets.all(16),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: GoogleFonts.audiowide(color: Colors.white),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "The description will be included on the item's detail page underneath its image.",
                      textScaleFactor: 0.7,
                      style: GoogleFonts.audiowide(color: Colors.white38),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    style: GoogleFonts.audiowide(color: Colors.white),
                    onChanged: (value) => ref
                        .read(itemDescriptionProvider.notifier)
                        .state = value,
                    decoration: InputDecoration(
                      isDense: true,
                      border: InputBorder.none,
                      hintText:
                          ref.read(itemDescriptionProvider.notifier).state,
                      hintStyle: GoogleFonts.audiowide(
                          color: Colors.white, fontSize: 15),
                      contentPadding: const EdgeInsets.all(16),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'External Link',
                      style: GoogleFonts.audiowide(color: Colors.white),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "People can see the details of your asset by this link.",
                      textScaleFactor: 0.7,
                      style: GoogleFonts.audiowide(color: Colors.white38),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    style: GoogleFonts.audiowide(color: Colors.white),
                    decoration: InputDecoration(
                      isDense: true,
                      border: InputBorder.none,
                      hintText: 'https://somesite.link',
                      hintStyle: GoogleFonts.audiowide(
                          color: Colors.white, fontSize: 15),
                      contentPadding: const EdgeInsets.all(16),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: util.width,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    // Return the background color based on the button state
                    if (states.contains(MaterialState.pressed)) {
                      return Color.fromARGB(255, 18, 103, 63);
                    } else {
                      return const Color.fromARGB(255, 29, 190, 115);
                    }
                  }),
                ),
                child: Text(
                  "Create",
                  style: GoogleFonts.audiowide(color: Colors.white),
                ),
                onPressed: () async {
                  File nft = ref.read(mintedImageProvider.notifier).state;
                  String itemname = ref.read(itemNameProvider.notifier).state;
                  String description =
                      ref.read(itemDescriptionProvider.notifier).state;
                  String website = "a.com";
                  File pp = ref.read(profileImageProvider.notifier).state;
                  final result = await MintNFTService.mintNewNFT(
                      nft, itemname, description, website);
                  if (result) {
                    ref.read(assetMintedProvider.notifier).state = result;
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (ctx) => const ApproveCurrency()));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Scaffold secondMintPage(Utility util, double _indicatorIndex) => Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          width: util.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  child: InkWell(
                    onTap: () => print("minting"),
                    child: Lottie.network(
                        "https://assets8.lottiefiles.com/packages/lf20_NxAJBy.json"),
                  ),
                  height: util.height / 2,
                ),
              ),
              Text(
                "Image, Video, Audio or 3D Model",
                style: GoogleFonts.audiowide(
                    color: Color.fromARGB(255, 29, 190, 115)),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "File types supported: JPG, PNG, GIF, SVG, MP4, WEBM, MP3, WAV, OGG, GLB, GLTF. Max size: 100MB",
                textScaleFactor: 0.8,
                style: GoogleFonts.nunito(color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Item Name',
                    style: GoogleFonts.audiowide(color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        border: InputBorder.none,
                        hintText: 'MetafacelyItem',
                        hintStyle: GoogleFonts.audiowide(
                            color: Colors.white, fontSize: 15),
                        contentPadding: const EdgeInsets.all(16),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                        style: GoogleFonts.audiowide(color: Colors.white),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "The description will be included on the item's detail page underneath its image.",
                        textScaleFactor: 0.7,
                        style: GoogleFonts.audiowide(color: Colors.white38),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        border: InputBorder.none,
                        hintText: 'A brief description',
                        hintStyle: GoogleFonts.audiowide(
                            color: Colors.white, fontSize: 15),
                        contentPadding: const EdgeInsets.all(16),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'External Link',
                        style: GoogleFonts.audiowide(color: Colors.white),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "People can see the details of your asset by this link.",
                        textScaleFactor: 0.7,
                        style: GoogleFonts.audiowide(color: Colors.white38),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        border: InputBorder.none,
                        hintText: 'https://somesite.link',
                        hintStyle: GoogleFonts.audiowide(
                            color: Colors.white, fontSize: 15),
                        contentPadding: const EdgeInsets.all(16),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: util.width,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.resolveWith((states) {
                      // Return the background color based on the button state
                      if (states.contains(MaterialState.pressed)) {
                        return Color.fromARGB(255, 18, 103, 63);
                      } else {
                        return const Color.fromARGB(255, 29, 190, 115);
                      }
                    }),
                  ),
                  child: Text(
                    "Create",
                    style: GoogleFonts.audiowide(color: Colors.white),
                  ),
                  onPressed: () {
                    Fluttertoast.showToast(
                      msg: "This is a toast message",
                      toastLength:
                          Toast.LENGTH_SHORT, // Duration to show the toast
                      gravity:
                          ToastGravity.BOTTOM, // Toast position on the screen
                      timeInSecForIosWeb:
                          1, // Duration to show the toast for iOS and web platforms
                      backgroundColor: Colors.black, // Toast background color
                      textColor: Colors.white, // Toast text color
                      fontSize: 16.0, // Toast text font size
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );

Scaffold firstLandingPage(Utility util, double _indicatorIndex) => Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: util.width,
        height: util.height,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Lottie.network(
              "https://assets9.lottiefiles.com/packages/lf20_mj9xns8a.json",
              width: util.width / 2,
              height: util.height / 2),
          Text("Create & Trade NFTs",
              textScaleFactor: 1.5,
              style: GoogleFonts.orbitron(color: Colors.white)),
          SizedBox(
            height: 20,
          ),
          Text("Mint first.",
              textScaleFactor: 1,
              style: GoogleFonts.orbitron(color: Colors.white54)),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              "Users can create their own unique NFTs and share them with other users. NFTs can be used for a variety of things, such as artwork, music tracks, game items, and more.",
              textAlign: TextAlign.justify,
              textScaleFactor: 0.8,
              style: GoogleFonts.raleway(color: Colors.white54),
            ),
          ),
          DotsIndicator(
            dotsCount: 3,
            position: _indicatorIndex,
            decorator: DotsDecorator(
              color: Colors.grey, // Inactive color
              activeColor: Colors.green,
            ),
          ),
        ]),
      ),
    );

Scaffold secondLandingPage(Utility util, double _indicatorIndex) => Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: util.width,
        height: util.height,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Lottie.network(
              "https://assets9.lottiefiles.com/packages/lf20_hcfaw8qp.json",
              width: util.width / 2,
              height: util.height / 2),
          Text("Start Minting",
              textScaleFactor: 1.5,
              style: GoogleFonts.orbitron(color: Colors.white)),
          SizedBox(
            height: 20,
          ),
          Text("Then sell.",
              textScaleFactor: 1,
              style: GoogleFonts.orbitron(color: Colors.white54)),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              "The NFTs you create are unique and original, thanks to blockchain technology. Our marketplace offers you the opportunity to be a unique owner of digital assets in the digital world.",
              textAlign: TextAlign.justify,
              textScaleFactor: 0.8,
              style: GoogleFonts.raleway(color: Colors.white54),
            ),
          ),
          DotsIndicator(
            dotsCount: 3,
            position: _indicatorIndex,
            decorator: const DotsDecorator(
              color: Colors.grey, // Inactive color
              activeColor: Colors.green,
            ),
          ),
        ]),
      ),
    );
