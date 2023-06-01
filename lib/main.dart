import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nftmarket/Modals/MainPages/welcome.dart';
import 'package:nftmarket/Modals/bottom_navbar_pages.dart';
import 'package:nftmarket/Providers/bottom_navbar_index_provider.dart';
import 'package:nftmarket/Providers/wallet_connection_provider.dart';
import 'package:nftmarket/Utility/util.dart';

import 'Providers/util_provider.dart';

void main() {
  runApp(const ProviderScope(
    child: GetMaterialApp(
        debugShowCheckedModeBanner: false, home: WelcomeScreen()),
  ));
}

class MarketplaceMain extends ConsumerWidget {
  const MarketplaceMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(indexProvider);
    ref.watch(WalletConnectionStateProvider);
    Utility util = ref.watch(utilProvider(context));

    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: ref.read(indexProvider),
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          unselectedItemColor: Color.fromARGB(255, 139, 139, 139),
          selectedItemColor: Color.fromARGB(255, 29, 190, 115),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (idx) {
            ref.read(indexProvider.notifier).state = idx;
          },
          items: buildBottomNavBar(ref),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color.fromARGB(255, 29, 30, 34),
                Color.fromARGB(255, 29, 30, 34),
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 0, 0, 0)
              ],
            ),
          ),
          child: IndexedStack(
              index: ref.read(indexProvider.notifier).state,
              children: !ref.read(WalletConnectionStateProvider.notifier).state
                  ? MainPagesModal.mainPages
                  : MainPagesModal.mainPagesWhenUserAuthenticated),
        ));
  }

  List<BottomNavigationBarItem> buildBottomNavBar(WidgetRef ref) {
    if (ref.read(WalletConnectionStateProvider.notifier).state) {
      return [
        BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  CupertinoIcons.home,
                  size: 25,
                ),
                SizedBox(
                  height: 3,
                ),
                if (ref.read(indexProvider.notifier).state == 0)
                  Icon(
                    Icons.circle,
                    size: 6,
                  )
              ],
            ),
            label: 'Market'),
        BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  CupertinoIcons.chart_bar_circle,
                  size: 25,
                ),
                SizedBox(
                  height: 3,
                ),
                if (ref.read(indexProvider.notifier).state == 1)
                  Icon(
                    Icons.circle,
                    size: 6,
                  )
              ],
            ),
            label: 'Search'),
        BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  CupertinoIcons.plus_circle_fill,
                  size: 40,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 3,
                ),
              ],
            ),
            label: 'Search'),
        BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  CupertinoIcons.profile_circled,
                  size: 25,
                ),
                SizedBox(
                  height: 3,
                ),
                if (ref.read(indexProvider.notifier).state == 3)
                  Icon(
                    Icons.circle,
                    size: 6,
                  )
              ],
            ),
            label: 'Search'),
        BottomNavigationBarItem(
            icon: Column(
              children: [
                ref.read(WalletConnectionStateProvider.notifier).state == true
                    ? const Icon(
                        Icons.more_horiz,
                        size: 25,
                      )
                    : const Icon(
                        Icons.wallet_outlined,
                        size: 25,
                      ),
                SizedBox(
                  height: 3,
                ),
              ],
            ),
            label: 'Search'),
      ];
    } else {
      return [
        BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  CupertinoIcons.home,
                  size: 25,
                ),
                SizedBox(
                  height: 3,
                ),
                if (ref.read(indexProvider.notifier).state == 0)
                  Icon(
                    Icons.circle,
                    size: 6,
                  )
              ],
            ),
            label: 'Market'),
        BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  CupertinoIcons.search,
                  size: 25,
                ),
                SizedBox(
                  height: 3,
                ),
                if (ref.read(indexProvider.notifier).state == 1)
                  Icon(
                    Icons.circle,
                    size: 6,
                  )
              ],
            ),
            label: 'Search'),
        BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  CupertinoIcons.bookmark_fill,
                  size: 25,
                ),
                SizedBox(
                  height: 3,
                ),
                if (ref.read(indexProvider.notifier).state == 2)
                  Icon(
                    Icons.circle,
                    size: 6,
                  )
              ],
            ),
            label: 'Search'),
        BottomNavigationBarItem(
            icon: Column(
              children: [
                ref.read(WalletConnectionStateProvider.notifier).state
                    ? const Icon(
                        CupertinoIcons.profile_circled,
                        size: 25,
                      )
                    : const Icon(
                        Icons.wallet_outlined,
                        size: 25,
                      ),
                SizedBox(
                  height: 3,
                ),
                if (ref.read(indexProvider.notifier).state == 3)
                  Icon(
                    Icons.circle,
                    size: 6,
                  )
              ],
            ),
            label: 'Search'),
      ];
    }
  }
}
