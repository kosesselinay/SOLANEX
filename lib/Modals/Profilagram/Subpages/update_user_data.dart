import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:nftmarket/Gateway/edit_profile_gateway.dart';
import 'package:nftmarket/Providers/user_data_edit.dart';
import 'package:nftmarket/Providers/util_provider.dart';

import '../../../Utility/util.dart';
import '../profile.dart';

class UpdateUserData extends ConsumerWidget {
  const UpdateUserData({Key? key}) : super(key: key);

  Future<XFile> _pickImage() async {
    try {
      XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
      return Future.value(image);
    } on Exception catch (_, ex) {
      return Future.error("Some error happened.");
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Utility util = ref.read(utilProvider(context));
    ref.watch(profileImageProvider);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Update Profile",
            style: GoogleFonts.orbitron(color: Colors.white),
          ),
          toolbarHeight: 50,
          elevation: 5,
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
        ),
        backgroundColor: const Color.fromARGB(172, 0, 0, 0),
        body: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.all(20),
              width: util.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Profile Picture',
                    style: GoogleFonts.audiowide(color: Colors.white),
                  ),
                  Center(
                    child: SizedBox(
                      child: InkWell(
                        onTap: () async {
                          XFile selectedFile = await _pickImage();
                          ref.read(profileImageProvider.notifier).state =
                              File(selectedFile.path);
                        },
                        child: ref
                                .read(profileImageProvider.notifier)
                                .state
                                .path
                                .isEmpty
                            ? CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 100,
                                child: Lottie.network(
                                    "https://assets8.lottiefiles.com/packages/lf20_NxAJBy.json"))
                            : CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 100,
                                backgroundImage: FileImage((File(ref
                                    .read(profileImageProvider.notifier)
                                    .state
                                    .path))),
                              ),
                      ),
                      height: util.height / 4,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'User Name',
                        style: GoogleFonts.audiowide(color: Colors.white),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          onChanged: (value) {
                            ref.read(nicknameProvider.notifier).state = value;
                          },
                          cursorColor: Colors.green,
                          style: GoogleFonts.audiowide(color: Colors.white),
                          decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            hintText: ref.read(nicknameProvider.notifier).state,
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
                            'About You',
                            style: GoogleFonts.audiowide(color: Colors.white),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Tell us about yourself and a brief description about your collections.",
                            textScaleFactor: 0.7,
                            style: GoogleFonts.audiowide(color: Colors.white38),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          minLines: 3,
                          maxLines: 5,
                          cursorColor: Colors.green,
                          style: GoogleFonts.audiowide(color: Colors.white),
                          onChanged: (value) {
                            ref.read(biographyProvider.notifier).state = value;
                          },
                          decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            hintText:
                                ref.read(biographyProvider.notifier).state,
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
                            'Your Website',
                            style: GoogleFonts.audiowide(color: Colors.white),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "People can see the details of your assets by this link.",
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
                          cursorColor: Colors.green,
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
                      const SizedBox(height: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Twitter',
                            style: GoogleFonts.audiowide(color: Colors.white),
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
                            hintText: 'Twitter Account URL',
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
                            'Instagram',
                            style: GoogleFonts.audiowide(color: Colors.white),
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
                            hintText: 'Instagram Account URL',
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
                            'Linkedin',
                            style: GoogleFonts.audiowide(color: Colors.white),
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
                            hintText: 'Linkedin Account URL',
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
                        "Update",
                        style: GoogleFonts.audiowide(color: Colors.white),
                      ),
                      onPressed: () {
                        String nickname =
                            ref.read(nicknameProvider.notifier).state;
                        String biography =
                            ref.read(biographyProvider.notifier).state;
                        String website = "a.com";
                        File pp = ref.read(profileImageProvider.notifier).state;

                        ref
                            .read(profileUpdatedStateProvider)
                            .valuesChanged(pp, nickname, biography, website)
                            .then((value) {
                          if (value) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              backgroundColor: Colors.green,
                              content: Text("Profile updated."),
                            ));
                            Future.delayed(Duration(seconds: 3))
                                .then((value) => Navigator.pop(context));
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              backgroundColor: Colors.red,
                              content: Text("Some problem occured."),
                            ));
                          }
                        });
                      },
                    ),
                  ),
                ],
              )),
        ));
  }
}
