import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:nftmarket/Modals/MainPages/selo.dart';


class Market extends StatelessWidget {
  const Market({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("LOGO",
                      textScaleFactor: 1,
                      style: GoogleFonts.audiowide(
                          fontWeight: FontWeight.bold, color: Colors.green)),
                  Container(
                    width: MediaQuery.of(context).size.width / 3.5,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/sol.png",
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(width: 2),
                          Text("0.0",
                              textScaleFactor: 1,
                              style: GoogleFonts.audiowide(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              newMethod(context),
              SizedBox(
                height: 20,
              ),
              Text("Top Traders",
                  textScaleFactor: 1.5,
                  style: GoogleFonts.raleway(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    createTopTrader(),
                    createTopTrader(),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Hot Items",
                  textScaleFactor: 1.5,
                  style: GoogleFonts.raleway(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              buildHotItems(context),
              SizedBox(
                height: 20,
              ),
              Text("Hot Collections",
                  textScaleFactor: 1.5,
                  style: GoogleFonts.raleway(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.3,
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        buildHotColllections(context)),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row createTopTrader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  "https://visionarymarketing.com/wp-content/uploads/2022/02/art-nfts-auction-2021-esther-barend.jpg"),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Cryptopunks",
                      style: GoogleFonts.audiowide(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(width: 2),
                    Icon(
                      Icons.verified,
                      size: 18,
                      color: Color.fromARGB(255, 29, 190, 115),
                    )
                  ],
                ),
                Text(
                  "+ 50.03%",
                  style: GoogleFonts.nunito(
                      color: Color.fromARGB(255, 29, 190, 115), fontSize: 12),
                ),
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  "https://visionarymarketing.com/wp-content/uploads/2022/02/art-nfts-auction-2021-esther-barend.jpg"),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Cryptopunks",
                      style: GoogleFonts.audiowide(
                          color: Colors.white, fontSize: 12),
                    ),
                    SizedBox(width: 2),
                    Icon(
                      Icons.verified,
                      size: 18,
                      color: Color.fromARGB(255, 29, 190, 115),
                    )
                  ],
                ),
                Text(
                  "+ 50.03%",
                  style: GoogleFonts.nunito(
                      color: Color.fromARGB(255, 29, 190, 115), fontSize: 12),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }

  Padding buildHotItems(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CarouselSlider(
        options: CarouselOptions(
            viewportFraction: 0.6,
            disableCenter: true,
            enlargeCenterPage: true,
            autoPlay: true,
            height: MediaQuery.of(context).size.height / 2.5),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      
                         GestureDetector(
                           onTap: ()=> Navigator.of(context).push(MaterialPageRoute(
                             // ignore: prefer_const_constructors
                             builder: (context)=>selo(),
                             )),
                           child: Expanded(
                            
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              
                                                 
                              child: Hero(
                                tag: new Text("image1"),
                                child: Image.network(
                                  "https://visionarymarketing.com/wp-content/uploads/2022/02/art-nfts-auction-2021-esther-barend.jpg",
                                  fit: BoxFit.cover,
                                  scale: 0.5),),
                            ),
                                  
                            
                            
                            
                           ),
                         ),
                      
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Feel the peach".toLowerCase(),
                          textScaleFactor: 1.1,
                          overflow: TextOverflow.clip,
                          style: GoogleFonts.orbitron(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: NetworkImage(
                                      "https://visionarymarketing.com/wp-content/uploads/2022/02/art-nfts-auction-2021-esther-barend.jpg"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Cryptopunks",
                                      style: GoogleFonts.audiowide(
                                          color: Colors.white,
                                          fontSize: 8,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "2.5 SOL",
                                      textScaleFactor: 0.8,
                                      style: GoogleFonts.orbitron(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.greenAccent),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Icon(
                              Icons.share_outlined,
                              size: 18,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      )
                    ],
                  ));
            },
          );
        }).toList(),
      ),
    );
  }

   Container  buildHotColllections(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      width: MediaQuery.of(context).size.width / 1.5,
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Colors.black,
                  ]).createShader(bounds);
            },
            child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  "https://cryptopotato.com/wp-content/uploads/2022/04/img3_moonbirds.jpg",
                  fit: BoxFit.cover,
                )),
               
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "#irmnurekn",
                textScaleFactor: 1,
                overflow: TextOverflow.clip,
                style: GoogleFonts.audiowide(
                    fontWeight: FontWeight.bold, color: Colors.white54),
              ),
              SizedBox(
                width: 5,
              ),
              const CircleAvatar(
                radius: 10,
                backgroundImage: NetworkImage(
                    "https://pbs.twimg.com/ext_tw_video_thumb/1483523107411443722/pu/img/--dcs_Aj7u7lNNZ7.jpg"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Feel the peach".toUpperCase(),
                textScaleFactor: 0.9,
                overflow: TextOverflow.clip,
                style: GoogleFonts.audiowide(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Icon(
                CupertinoIcons.heart_fill,
                color: Colors.greenAccent,
              )
            ],
          ),
        ],
      ),
    );
  }

  Container newMethod(BuildContext context) {
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(fit: StackFit.expand, children: [
            ColorFiltered(
                colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
                child: Lottie.network(
                    'https://assets4.lottiefiles.com/private_files/lf30_iyicd2xy.json',
                    repeat: true,
                    frameRate: FrameRate(120),
                    fit: BoxFit.cover)),
            Container(
              padding: EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Discover digital arts and\ncollect NFT's",
                    textScaleFactor: 1.5,
                    style: GoogleFonts.audiowide(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Create, Buy & Sell your\nworks from #1 first mobile market place",
                    textScaleFactor: 0.8,
                    style: GoogleFonts.orbitron(
                        color: Colors.white70, fontWeight: FontWeight.bold),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2,
                      child: ElevatedButton(
                          onPressed: () => print("sa"),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 29, 190, 115))),
                          child: Text(
                            "Explore Market",
                            style: GoogleFonts.orbitron(
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 3.5);
  }
}
