import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nftmarket/Modals/MainPages/MintSubPages/MintSubPages/confirmOffer.dart';

class ApproveCurrency extends StatelessWidget {
  const ApproveCurrency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height / 10,
          backgroundColor: Colors.black,
          title: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Approve Minting",
              textScaleFactor: 1,
              overflow: TextOverflow.clip,
              style: GoogleFonts.audiowide(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 246, 241, 241)),
            ),
          )),
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10.0),
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 1.8,
                height: MediaQuery.of(context).size.height / 12,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.black,
                  border: Border.all(
                    color: Color.fromARGB(255, 141, 134, 134),
                    width: 0.7,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/sol.png'),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 9,
                      child: Divider(
                        color: Color.fromARGB(255, 241, 236, 236),
                        thickness: 1.0,
                        height: MediaQuery.of(context).size.width / 2,
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/phantom.png'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Give Permission to access your SOL?",
            style: GoogleFonts.audiowide(
              color: Color.fromARGB(255, 29, 190, 115),
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
            // add margin to move text down
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: Text(
              "By granting permission, you are allowing to following contract to access your funds",
              style: GoogleFonts.orbitron(
                color: Color.fromARGB(255, 160, 167, 164),
                fontSize: 9.9,
              ),
              textAlign: TextAlign.center,
              // add margin to move text down
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Divider(
            height: 2,
            thickness: 0.5,
            color: Color.fromARGB(255, 186, 180, 162),
            indent: 10,
            endIndent: 10,
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              width: MediaQuery.of(context).size.width / 1.8,
              height: MediaQuery.of(context).size.height / 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Color.fromARGB(118, 49, 50, 49),
                border: Border.all(
                  color: Color.fromARGB(255, 56, 54, 54),
                  width: 0.7,
                ),
              ),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundImage: AssetImage('assets/images/bored.png'),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0.0),
                          isDense: true,
                          labelText: "EX345754892063456789098432",
                          labelStyle: GoogleFonts.audiowide(
                            color: Color.fromARGB(166, 219, 218, 218),
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.copy,
                      color: Colors.white,
                      size: 18.0,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Icon(
                      Icons.reply,
                      color: Colors.white,
                      size: 18.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        
          Center(
            child: Column(
              children: [
                Text(
                  "Gas Fee (estimated) : 0.02 SOL",
                  style: GoogleFonts.orbitron(
                    color: Color.fromARGB(255, 160, 167, 164),
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            height: 2,
            thickness: 0.5,
            color: Color.fromARGB(255, 186, 180, 162),
            indent: 10,
            endIndent: 10,
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 4.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Color.fromARGB(118, 49, 50, 49),
                border: Border.all(
                  color: Color.fromARGB(255, 56, 54, 54),
                  width: 0.7,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 18.0,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Permission Request',
                          textScaleFactor: 1.4,
                          textAlign: TextAlign.right,
                          style: GoogleFonts.audiowide(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            elevation: 0,
                          ),
                          child: Text(
                            "Edit",
                            style: GoogleFonts.audiowide(
                              color: Color.fromARGB(255, 29, 190, 115),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 56, 54, 54),
                    thickness: 0.7,
                    height: 0.0,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0.0),
                          isDense: true,
                          labelText: "EX345754892063456789098432",
                          labelStyle: GoogleFonts.audiowide(
                            color: Color.fromARGB(166, 219, 218, 218),
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: MediaQuery.of(context).size.height / 10.5,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: FloatingActionButton.extended(
                heroTag: "tag1",
                onPressed: () => {
                  // action code for button
                },
                label: Text(
                  ' Reject',
                  style: GoogleFonts.audiowide(
                    textStyle: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                backgroundColor: Color.fromARGB(245, 76, 79, 78),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: FloatingActionButton.extended(
                heroTag: "tag2",
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    // ignore: prefer_const_constructors
                    builder: (context) => confirmOffer(),
                  ));
                  // action code for button
                },
                label: Center(
                  child: Text(
                    'Confirm',
                    style: GoogleFonts.audiowide(
                      textStyle: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                backgroundColor: Color.fromARGB(255, 29, 190, 115),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
