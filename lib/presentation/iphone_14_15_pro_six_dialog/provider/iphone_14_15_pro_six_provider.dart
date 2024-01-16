import 'package:flutter/material.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/presentation/iphone_14_15_pro_six_dialog/models/iphone_14_15_pro_six_model.dart';

/// A provider class for the Iphone1415ProSixDialog.
///
/// This provider manages the state of the Iphone1415ProSixDialog, including the
/// current iphone1415ProSixModelObj
class Iphone1415ProSixProvider extends ChangeNotifier {
  Iphone1415ProSixModel iphone1415ProSixModelObj = Iphone1415ProSixModel();

  @override
  void dispose() {
    super.dispose();
  }
}
