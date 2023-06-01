import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nftmarket/Modals/More/SubPages/wallet_settings.dart';
import 'package:nftmarket/Utility/util.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../Providers/util_provider.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Text(
            "More",
            style: GoogleFonts.audiowide(
              color: Color.fromARGB(255, 160, 167, 164),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const WalletSettings()))),
                child: const SettingsItem(
                  name: "My Wallet",
                  icon: Icons.wallet_outlined,
                  iconColor: Colors.blue,
                ),
              ),
              const SettingsItem(
                name: "My Collections",
                icon: Icons.collections_bookmark,
                iconColor: Colors.orange,
              ),
              const SettingsItem(
                name: "Watchlist",
                icon: Icons.watch_later,
                iconColor: Colors.purpleAccent,
              ),
              const SettingsItem(
                name: "Settings",
                icon: Icons.settings_applications,
                iconColor: Colors.red,
              ),
              const SettingsItem(
                name: "Logout",
                icon: Icons.login_rounded,
                iconColor: Colors.green,
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 2,
                thickness: 0.5,
                color: Color.fromARGB(255, 186, 180, 162),
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(height: 20),
             
              Padding(
                padding: const EdgeInsets.only(left:10 ),
                child: Column(
                  
                  children: [
                    Row(
                      
                      
                          
                          children: [
                            Text(
                              "Follow Us:",
                              style: GoogleFonts.audiowide(
                                  color: Color.fromARGB(255, 160, 167, 164),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                              // add margin to move text down
                            ),
                          
                        
                        
                      ],
                    ),
                     SizedBox(height: 22),
                  ],
                ),
              ),Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
     SizedBox(width: 8),
    Container(
      width: MediaQuery.of(context).size.width/4,
      height:MediaQuery.of(context).size.height/8,
      decoration: BoxDecoration(
        color: Color(0xFF1DA1F2),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            MdiIcons.twitter,
            color: Colors.white,
          ),
          SizedBox(height: 5),
          Text(
            "Twitter",
            style: GoogleFonts.audiowide(
              color: Colors.white,
              fontSize: 14
            ),
          ),
        ],
      ),
    ),
   
    Container(
      width: MediaQuery.of(context).size.width/4,
      height:MediaQuery.of(context).size.height/8,
      decoration: BoxDecoration(
        color: Colors.pink,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            MdiIcons.instagram,
            color: Colors.white,
          ),
           SizedBox(height: 5),
          Text(
            "Instagram",
            style: GoogleFonts.audiowide(
              color: Colors.white,
              
            ),
          ),
        ],
      ),
    ),
   
    Container(
      width: MediaQuery.of(context).size.width/4,
      height:MediaQuery.of(context).size.height/8,
      decoration: BoxDecoration(
        color: Color(0xFF7289DA),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.discord,
            color: Colors.white,
          ),
           SizedBox(height: 5),
          Text(
            "Discord",
            style: GoogleFonts.audiowide(
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
    SizedBox(width: 8),
  ],
),
SizedBox(height: 16,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
      SizedBox(width: 8),
    Container(
      width: MediaQuery.of(context).size.width/4,
      height:MediaQuery.of(context).size.height/8,
      decoration: BoxDecoration(
        color: Color(0xFFFF4500),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            MdiIcons.reddit,
            color: Colors.white,
          ),
           SizedBox(height: 5),
          Text(
            "Reddit",
            style: GoogleFonts.audiowide(
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  
    Container(
      width: MediaQuery.of(context).size.width/4,
      height:MediaQuery.of(context).size.height/8,
      decoration: BoxDecoration(
        color: Color(0xFF0088CC),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.telegram,
            color: Colors.white,
          ),
           SizedBox(height: 5),
          Text(
            "Telegram",
            style: GoogleFonts.audiowide(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ],
      ),
    ),
    
    Container(
      width: MediaQuery.of(context).size.width/4,
      height:MediaQuery.of(context).size.height/8,
      decoration: BoxDecoration(
        color: Color(0xFFFF0000),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            MdiIcons.youtube,
            color: Colors.white,
          ),
           SizedBox(height: 5),
          Text(
            "YouTube",
            style: GoogleFonts.audiowide(
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
    SizedBox(width: 3,)
  ],),










              
     

              
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsItem extends ConsumerWidget {
  final String name;
  final IconData icon;
  final Color iconColor;

  const SettingsItem(
      {Key? key,
      required this.name,
      required this.icon,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Utility util = ref.watch(utilProvider(context));
    return Container(
      margin: const EdgeInsets.all(20),
      width: util.width,
      child: Row(
        children: [
          Icon(
            icon,
            color: iconColor,
            size: 28,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            name,
            textScaleFactor: 1.0,
            style: GoogleFonts.orbitron(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward,
            color: Colors.white,
            size: 28,
          ),
        ],
      ),
    );
  }
}
