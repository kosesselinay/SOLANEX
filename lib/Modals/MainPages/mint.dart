import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

import '../../Providers/util_provider.dart';
import '../../Utility/util.dart';
import 'MintSubPages/mintWidgets.dart';

class MintPage extends ConsumerWidget {
  MintPage({Key? key}) : super(key: key);
  late File _selectedImage;

  Future<XFile> _pickImage() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    return Future.value(image);
  }

  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Utility util = ref.watch(utilProvider(context));
    return PageView(children: [
      firstLandingPage(util, 0),
      secondLandingPage(util, 1),
      finalMintPage(util, ref, context),
    ]);
  }
}
