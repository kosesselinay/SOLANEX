import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:image_picker/image_picker.dart';

class MintNFTService {
  static const String baseUrl = 'http://192.168.1.102:8080/api/mint/new';

  static Future<bool> mintNewNFT(
      File nft, String itemName, String description, String link) async {
    // convert profile picture to base64 string
    List<int> imageBytes = await nft.readAsBytes();
    String base64Image = base64Encode(imageBytes);

    final Map<String, dynamic> data = {
      'nft': base64Image,
      'itemName': itemName,
      'description': description,
      'link': link,
    };

    final http.Response response = await http.post(
      Uri.parse(baseUrl),
      body: json.encode(data),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode != 200) {
      return Future.value(false);
    }
    return Future.value(true);
  }
}
