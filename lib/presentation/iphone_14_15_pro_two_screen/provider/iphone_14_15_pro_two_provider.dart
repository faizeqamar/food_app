import 'package:flutter/material.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/presentation/iphone_14_15_pro_two_screen/models/iphone_14_15_pro_two_model.dart';

/// A provider class for the Iphone1415ProTwoScreen.
///
/// This provider manages the state of the Iphone1415ProTwoScreen, including the
/// current iphone1415ProTwoModelObj
class Iphone1415ProTwoProvider extends ChangeNotifier {
  Iphone1415ProTwoModel iphone1415ProTwoModelObj = Iphone1415ProTwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
