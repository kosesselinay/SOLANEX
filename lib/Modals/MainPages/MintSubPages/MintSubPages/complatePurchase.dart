import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class complatePurchase extends StatelessWidget {
  const complatePurchase({Key? key}) : super(key: key);

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
              "Complate Purchase",
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
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/phantom.png'),
                        radius: 40,
                      ),
                    ]),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  "Signature Request",
                  style: GoogleFonts.audiowide(
                    color: Color.fromARGB(255, 62, 170, 118),
                    fontSize: 28,
                  ),
                  textAlign: TextAlign.center,
                  // add margin to move text down
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  "https://blabla.io",
                  style: GoogleFonts.audiowide(
                    color: Color.fromARGB(255, 62, 170, 118),
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                  // add margin to move text down
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  "EX345754892063456789098432",
                  style: GoogleFonts.orbitron(
                    color: Color.fromARGB(255, 160, 167, 164),
                    fontSize: 12.9,
                  ),
                  textAlign: TextAlign.center,
                  // add margin to move text down
                ),
              ],
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
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 5,
                          height: MediaQuery.of(context).size.height / 13,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.network(
                              "https://visionarymarketing.com/wp-content/uploads/2022/02/art-nfts-auction-2021-esther-barend.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Metafacely NFT",
                        textScaleFactor: 1.4,
                        textAlign: TextAlign.right,
                        style: GoogleFonts.audiowide(
                            color: Colors.white,
                            fontSize: 8.5,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Metafacely #1234",
                        textScaleFactor: 2,
                        textAlign: TextAlign.right,
                        style: GoogleFonts.audiowide(
                            color: Colors.white,
                            fontSize: 8.5,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Quantity 1",
                        textScaleFactor: 1.4,
                        textAlign: TextAlign.right,
                        style: GoogleFonts.audiowide(
                            color: Colors.white,
                            fontSize: 8.5,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price",
                        textScaleFactor: 1.4,
                        textAlign: TextAlign.right,
                        style: GoogleFonts.audiowide(
                            color: Colors.white,
                            fontSize: 8.5,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "123456",
                        textScaleFactor: 2,
                        textAlign: TextAlign.right,
                        style: GoogleFonts.audiowide(
                            color: Colors.white,
                            fontSize: 8.5,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "\$123445",
                        textScaleFactor: 1.4,
                        textAlign: TextAlign.right,
                        style: GoogleFonts.audiowide(
                            color: Colors.white,
                            fontSize: 8.5,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 35,
              ),
              Divider(
                height: 2,
                thickness: 0.5,
                color: Color.fromARGB(255, 186, 180, 162),
                indent: 10,
                endIndent: 10,
              ),
            ],
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
                          Icons.mail,
                          color: Colors.white,
                          size: 18.0,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Message',
                          textScaleFactor: 1.4,
                          textAlign: TextAlign.right,
                          style: GoogleFonts.audiowide(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
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
                  ' Cancel ',
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
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Container(
                          height: 400,
                          margin: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/success.png',
                                width: 150,
                                height: 150,
                              ),
                              SizedBox(height: 16),
                              Text(
                                "Congratulations!",
                                style: GoogleFonts.audiowide(
                                  color: Color.fromARGB(255, 62, 170, 118),
                                  fontSize: 25,
                                ),
                                textAlign: TextAlign.center,
                                // add margin to move text down
                              ),
                              SizedBox(height: 8),
                              Text(
                                "You have made an purchase for NFT. You can check your purchased on the menu Profile -> Purchased NFT",
                                style: GoogleFonts.orbitron(
                                  color: Color.fromARGB(255, 160, 167, 164),
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 16),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Center(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // İlk butona tıklama işlemleri burada yapılacak
                                      },
                                      child: Text(
                                        'Go To Purchase NFT',
                                        style: GoogleFonts.audiowide(
                                          textStyle: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(255, 29, 190, 115),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // İkinci butona tıklama işlemleri burada yapılacak
                                      },
                                      child: Text(
                                        '           Cancel           ',
                                        style: GoogleFonts.audiowide(
                                          textStyle: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(245, 76, 79, 78),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        backgroundColor: Color.fromARGB(255, 40, 41, 40),
                      );
                    },
                  );

                  // action code for button
                },
                label: Center(
                  child: Text(
                    '  Sign   ',
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
