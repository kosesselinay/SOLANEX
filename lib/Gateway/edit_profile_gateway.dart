import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:image_picker/image_picker.dart';

class ProfileService {
  static const String baseUrl = 'http://192.168.1.102:3000/update';

  static Future<bool> createOrUpdateProfile(File profilePicture,
      String userName, String aboutYou, String webSite) async {
    // convert profile picture to base64 string
    List<int> imageBytes = await profilePicture.readAsBytes();
    String base64Image = base64Encode(imageBytes);

    final Map<String, dynamic> data = {
      'profilePicture': base64Image,
      'userName': userName,
      'aboutYou': aboutYou,
      'webSite': webSite,
    };

    final http.Response response = await http.post(
      Uri.parse(baseUrl),
      body: json.encode(data),
      headers: {'Content-Type': 'application/json'},
    );
    print(response.statusCode);
    if (response.statusCode != 200) {
      return Future.value(false);
    }
    return Future.value(true);
  }

}
