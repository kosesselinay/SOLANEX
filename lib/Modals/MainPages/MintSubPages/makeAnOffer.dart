import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';


class makeAnOffer extends StatelessWidget {
  const makeAnOffer({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height/10,
          backgroundColor: Colors.black,
          title: Align(
            alignment: Alignment.centerLeft,
            child: Text(
                    "Make An Offer",
                    textScaleFactor: 1,
                    overflow: TextOverflow.clip,
                    style: GoogleFonts.audiowide(
                        fontWeight: FontWeight.bold, color: Color.fromARGB(255, 246, 241, 241)),
                  ),
          )
     ),
     backgroundColor: Colors.black,
     body: Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              "Offer Amount",
              textScaleFactor: 1,
              style: GoogleFonts.audiowide(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Text(
              "Balance 34.789 SOL",
              textScaleFactor: 0.7,
              textAlign: TextAlign.right,
              style: GoogleFonts.audiowide(
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
     SizedBox(height: 30,),
       Container
       (
  height: 50,
   width: MediaQuery.of(context).size.width/1.05,
  decoration: BoxDecoration(
      color: Color.fromARGB(255, 21, 21, 21), 
    
    borderRadius: BorderRadius.circular(25),
    border: Border.all(color: Color.fromARGB(255, 37, 36, 36)),
    
  ),
  
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
        enabled: false,
        decoration: InputDecoration( 
          labelText: "SOL",
          labelStyle: GoogleFonts.audiowide(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize:11,
          ),
          //normal border
          //focused border
        )),

  ),
  
  
),
SizedBox(height: 30,),
       Container(
  height: 50,
   width: MediaQuery.of(context).size.width/1.05,
  decoration: BoxDecoration(
      color: Color.fromARGB(255, 21, 21, 21), 
    borderRadius: BorderRadius.circular(25),
    border: Border.all(color: Color.fromARGB(255, 37, 36, 36)),
    
  ),
  
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
        enabled: false,
        decoration: InputDecoration( 
          labelText: "123456",
          labelStyle: GoogleFonts.audiowide(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize:11,
          ),
          //normal border
          //focused border
        )),

  ),
  
  
),
SizedBox(height: 30,),
Text("Total Offer Amount 12334 SOL (1234USD)",
 style: GoogleFonts.audiowide(
             fontSize: 11,
            color: Color.fromARGB(255, 186, 180, 162),)),
SizedBox(height: 30,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
        Expanded(
      child:   Text(
                    "Offer Expiration",
                    textScaleFactor: 1,
                    style: GoogleFonts.audiowide(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
    ),
  ],
),

SizedBox(height: 30,),
Container(
  height: 50,
   width: MediaQuery.of(context).size.width/1.05,
  decoration: BoxDecoration(
      color: Color.fromARGB(255, 21, 21, 21), 
    borderRadius: BorderRadius.circular(25),
    border: Border.all(color: Color.fromARGB(255, 37, 36, 36)),
    
  ),
  
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
        enabled: false,
        decoration: InputDecoration( 
          labelText: "3 Days",
          labelStyle: GoogleFonts.audiowide(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize:11,
          ),
          //normal border
          //focused border
        )),

  ),
  
  
),
SizedBox(height: 30,),
GestureDetector(
  onTap: () async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    // Process the selected date here
  },
  child: Container(
    height: 50,
    width: MediaQuery.of(context).size.width / 1.05,
    decoration: BoxDecoration(
        color: Color.fromARGB(255, 21, 21, 21), 
      borderRadius: BorderRadius.circular(25),
      border: Border.all(color: Color.fromARGB(255, 37, 36, 36)),
    ),
    child: Center(
      child: Text(
        "Select Date",
         style: GoogleFonts.orbitron(
                 fontWeight: FontWeight.bold, 
                 color: Colors.white,
                 fontSize: 11)
                 ,
      ),
      
    ),
  ),
),


      
    ],
    
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
         
          onPressed: () => {
            
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