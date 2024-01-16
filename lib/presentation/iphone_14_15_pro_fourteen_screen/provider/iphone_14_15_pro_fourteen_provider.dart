import 'package:flutter/material.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/presentation/iphone_14_15_pro_fourteen_screen/models/iphone_14_15_pro_fourteen_model.dart';

/// A provider class for the Iphone1415ProFourteenScreen.
///
/// This provider manages the state of the Iphone1415ProFourteenScreen, including the
/// current iphone1415ProFourteenModelObj
class Iphone1415ProFourteenProvider extends ChangeNotifier {
  Iphone1415ProFourteenModel iphone1415ProFourteenModelObj =
      Iphone1415ProFourteenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
