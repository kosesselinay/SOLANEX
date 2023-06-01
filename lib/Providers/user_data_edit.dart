import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../Gateway/edit_profile_gateway.dart';

final formKeyProvider = StateProvider((_) => GlobalKey<FormState>());
final bannerImageProvider = StateProvider((_) => File(""));
final profileImageProvider = StateProvider((ref) => File(""));
final twitterControllerProvider = StateProvider((_) => TextEditingController());
final instagramControllerProvider =
    StateProvider((_) => TextEditingController());
final facebookControllerProvider =
    StateProvider((_) => TextEditingController());
final linkedinControllerProvider =
    StateProvider((_) => TextEditingController());
final websiteControllerProvider = StateProvider((_) => TextEditingController());
final nicknameProvider = StateProvider((ref) => "Unknown");
final biographyProvider = StateProvider((ref) => "A brief description");
final profileUpdatedStateProvider =
    ChangeNotifierProvider<ProfileChangeNotifier>(
        (ref) => ProfileChangeNotifier());

final profilePictureProvider = StateProvider((ref) => XFile(""));

class ProfileChangeNotifier extends ChangeNotifier {
  Future<bool> valuesChanged(File profilePicture, String nickName,
      String biography, String webSite) async {
    //final result = await ProfileService.createOrUpdateProfile(
        //profilePicture, nickName, biography, webSite);
    notifyListeners();
    return Future.value(true);
  }
}
