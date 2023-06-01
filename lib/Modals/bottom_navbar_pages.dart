import 'package:flutter/widgets.dart';
import 'package:nftmarket/Modals/MainPages/mint.dart';
import 'package:nftmarket/Modals/MainPages/search.dart';

import 'MainPages/market.dart';
import 'Wallet/connect_wallet.dart';
import 'More/more_and_settings.dart';

class MainPagesModal {
  static List<Widget> mainPages = [
    Market(),
    Search(),
    Container(),
    ConnectWalletState()
  ];

  static List<Widget> mainPagesWhenUserAuthenticated = [
    Market(),
    Search(),
    MintPage(),
    ConnectWalletState(),
    Settings(),
  ];
}
