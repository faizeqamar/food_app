import 'package:flutter/material.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/presentation/iphone_14_15_pro_three_screen/models/iphone_14_15_pro_three_model.dart';

/// A provider class for the Iphone1415ProThreeScreen.
///
/// This provider manages the state of the Iphone1415ProThreeScreen, including the
/// current iphone1415ProThreeModelObj
class Iphone1415ProThreeProvider extends ChangeNotifier {
  Iphone1415ProThreeModel iphone1415ProThreeModelObj =
      Iphone1415ProThreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
