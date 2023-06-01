import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nftmarket/Modals/MainPages/MintSubPages/MintSubPages/approveCurrency.dart';
import 'package:nftmarket/Modals/MainPages/MintSubPages/MintSubPages/complatePurchase.dart';

class buyNow extends StatelessWidget {
  const buyNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height / 10,
          backgroundColor: Colors.black,
          title: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Buy Now",
              textScaleFactor: 1,
              overflow: TextOverflow.clip,
              style: GoogleFonts.audiowide(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 246, 241, 241)),
            ),
          )),
      backgroundColor: Colors.black,
      body: Column(
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
                  SizedBox(height: 7,),
                  Text(
                    "Metafacely #1234",
                    textScaleFactor: 2,
                    textAlign: TextAlign.right,
                    style: GoogleFonts.audiowide(
                        color: Colors.white,
                        fontSize: 8.5,
                        fontWeight: FontWeight.w600),
                  ),
                   SizedBox(height: 7,),
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
                  ),SizedBox(height: 7,),
                  Text(
                    "123456",
                    textScaleFactor: 1.4,
                    textAlign: TextAlign.right,
                    style: GoogleFonts.audiowide(
                        color: Colors.white,
                        fontSize: 8.5,
                        fontWeight: FontWeight.w600),
                  ),SizedBox(height: 7,),
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
          SizedBox(height: MediaQuery.of(context).size.height/35,),
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
                          Icons.account_balance_wallet_rounded,
                          color: Colors.white,
                          size: 18.0,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Send to da Different Wallet',
                          textScaleFactor: 1.4,
                          textAlign: TextAlign.right,
                          style: GoogleFonts.audiowide(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.normal),
                        ),

                        Spacer(),
              ElevatedButton(
onPressed: () {},
style: ElevatedButton.styleFrom(
primary: Colors.transparent,
elevation: 0,
), child:  Icon(
            Icons.keyboard_arrow_up,
            color: Colors.white,
            size: 30.0,
          ),


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
              margin: EdgeInsets.all(10),
              child: FloatingActionButton.extended(
                onPressed: () => {
                   Navigator.of(context).push(MaterialPageRoute(
                             // ignore: prefer_const_constructors
                             builder: (context)=>complatePurchase(),
                             )),

                  // action code for button
                },
                label: Text(
                  ' Complate Purchase ',
                  style: GoogleFonts.audiowide(
                    textStyle: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
               
                backgroundColor: const Color.fromARGB(255, 29, 190, 115),
              ),
            ),
          ],
        ),
      ),
    ));

    
  }
}