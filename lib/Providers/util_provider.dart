import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nftmarket/Utility/util.dart';

final utilProvider = StateProvider.family<Utility, BuildContext>((ref, context) {
  return Utility(context);
});