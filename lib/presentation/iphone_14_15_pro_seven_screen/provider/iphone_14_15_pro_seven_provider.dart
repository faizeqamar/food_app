import 'package:flutter/material.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/presentation/iphone_14_15_pro_seven_screen/models/iphone_14_15_pro_seven_model.dart';

/// A provider class for the Iphone1415ProSevenScreen.
///
/// This provider manages the state of the Iphone1415ProSevenScreen, including the
/// current iphone1415ProSevenModelObj
class Iphone1415ProSevenProvider extends ChangeNotifier {
  Iphone1415ProSevenModel iphone1415ProSevenModelObj =
      Iphone1415ProSevenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
