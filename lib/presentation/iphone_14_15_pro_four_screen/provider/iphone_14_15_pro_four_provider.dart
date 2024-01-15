import 'package:flutter/material.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/presentation/iphone_14_15_pro_four_screen/models/iphone_14_15_pro_four_model.dart';
import '../models/creditdebitcardcomponent_item_model.dart';

/// A provider class for the Iphone1415ProFourScreen.
///
/// This provider manages the state of the Iphone1415ProFourScreen, including the
/// current iphone1415ProFourModelObj

// ignore_for_file: must_be_immutable
class Iphone1415ProFourProvider extends ChangeNotifier {
  Iphone1415ProFourModel iphone1415ProFourModelObj = Iphone1415ProFourModel();

  @override
  void dispose() {
    super.dispose();
  }
}
