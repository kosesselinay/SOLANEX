import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nftmarket/Providers/user_data_edit.dart';

import '../../../Providers/util_provider.dart';
import '../../../Utility/util.dart';

class WalletSettings extends ConsumerWidget {
  const WalletSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Utility util = ref.read(utilProvider(context));

    return Scaffold(
        appBar: AppBar(
  toolbarHeight: MediaQuery.of(context).size.height / 10,
  backgroundColor: Colors.transparent,
  elevation: 0,
  title: Row(
    children: [
     
      Text(
        "My Wallet",
        textScaleFactor: 1,
        overflow: TextOverflow.clip,
        style: GoogleFonts.audiowide(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 246, 241, 241),
        ),
      ),
      SizedBox(width: MediaQuery.of(context).size.width/2.2),
       Icon(Icons.more_vert, color: Colors.white),
      
    ],
  ),
),


        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
            child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: util.height / 22),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ 
                  CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/bored.png'),
                ),
              
                ],
              ),
              const SizedBox(
                height: 10,
              ),
             
             
                Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Text(
                      ref.read(nicknameProvider.notifier).state,
                      style: GoogleFonts.audiowide(
                          color: Color.fromARGB(255, 62, 170, 118),
                          fontSize: 25,
                
                ),
               
                    ),
                ],),
                const SizedBox(
                height: 15,
              ),
                 Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Text("\$420.234.23",
                      
                       style: GoogleFonts.orbitron(
                        color: Color.fromARGB(255, 160, 167, 164),
                        fontSize: 12.9,
  ),
                
                ),
               
                    
                    
                ],),
                const SizedBox(
                height: 15,
              ),
                



                Center(
  child:   Container(
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
                  backgroundImage: AssetImage('assets/images/phantom.png'),
                ),
                SizedBox(width: 12,),
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
          SizedBox(width: 8,),
          Icon(
            Icons.copy,
            color: Colors.greenAccent,
            size: 18.0,
          ),
          SizedBox(width: 12,),
          
        ],
      ),
    ),
  ),
),
            
                 SizedBox(height: 15,),
              const Divider(
                indent: 10,
                endIndent: 10,
                thickness: 0.5,
                color: Colors.white30,
              ),
              SizedBox(height: 15,),

               Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
  width: 50,
  height: 50,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.green.withOpacity(0.1),
    border: Border.all(color: Colors.greenAccent.withOpacity(0.001), ),
  ),
  child: Center(
    child: Icon(Icons.file_download_outlined, size: 30, color: Colors.greenAccent),
  ),
),
SizedBox(height: 5),
Text(
  'Receive',
  style: GoogleFonts.audiowide(
    color: Colors.white,
    fontSize: 13,
  ),
),

  ],
              ),
              SizedBox(width: 30),
              Column(
               mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
  width: 50,
  height: 50,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.green.withOpacity(0.1),
    border: Border.all(color: Colors.greenAccent.withOpacity(0.001), ),
  ),
  child: Center(
    child: Icon(Icons.shopping_cart, size: 30, color: Colors.greenAccent),
  ),
),
SizedBox(height: 5),
Text(
  'Buy',
  style: GoogleFonts.audiowide(
    color: Colors.white,
    fontSize: 13,
  ),
),

  ],
              ),
              SizedBox(width: 30),
             Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
  width: 50,
  height: 50,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.green.withOpacity(0.1),
    border: Border.all(color: Colors.greenAccent.withOpacity(0.001), ),
  ),
  child: Center(
    child: Icon(Icons.near_me, size: 30, color: Colors.greenAccent),
  ),
),
SizedBox(height: 5),
Text(
  'Send',
  style: GoogleFonts.audiowide(
    color: Colors.white,
    fontSize: 13,
  ),
),

  ],
),

              SizedBox(width: 30),
              Column(
                 mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
  width: 50,
  height: 50,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.green.withOpacity(0.1),
    border: Border.all(color: Colors.greenAccent.withOpacity(0.001), ),
  ),
  child: Center(
    child: Icon(Icons.swap_vert, size: 30, color: Colors.greenAccent),
  ),
),
SizedBox(height: 5),
Text(
  'Swap',
  style: GoogleFonts.audiowide(
    color: Colors.white,
    fontSize: 13,
  ),
),

  ],
              ),
            ],
          ),
        ],
      ),
    ),





              
              const SizedBox(
                height: 20,
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
                              Text("NFTs",
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
                              Text("Assets",
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
            ],
          ),
        )));
  }
}
