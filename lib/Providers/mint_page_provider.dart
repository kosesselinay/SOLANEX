import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final assetMintedProvider = StateProvider((ref) => false);
final mintedImageProvider = StateProvider((ref) => File(""));
final itemNameProvider = StateProvider((ref) => "Give a name");
final itemDescriptionProvider = StateProvider((ref) => "A brief description");


class AssetMintedChangeProvider extends ChangeNotifier {
  Future<bool> assetMinted() async {
    //final result = await ProfileService.createOrUpdateProfile(
        //profilePicture, nickName, biography, webSite);
    notifyListeners();
    return Future.value(true);
  }
}