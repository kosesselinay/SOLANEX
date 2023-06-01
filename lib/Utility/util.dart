import 'package:flutter/widgets.dart';

class Utility {
  late final BuildContext context;
  static late final Utility _utilInstance;

  Utility(this.context);

  static Utility getInstance(BuildContext context) {
    if(_utilInstance == null) {
      _utilInstance = Utility(context);
    }
    return _utilInstance;
  }

  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;


  
}
