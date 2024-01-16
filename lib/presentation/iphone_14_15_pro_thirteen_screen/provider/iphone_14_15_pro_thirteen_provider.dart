import 'package:flutter/material.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/presentation/iphone_14_15_pro_thirteen_screen/models/iphone_14_15_pro_thirteen_model.dart';
import '../models/restaurantcard_item_model.dart';

/// A provider class for the Iphone1415ProThirteenScreen.
///
/// This provider manages the state of the Iphone1415ProThirteenScreen, including the
/// current iphone1415ProThirteenModelObj

// ignore_for_file: must_be_immutable
class Iphone1415ProThirteenProvider extends ChangeNotifier {
  Iphone1415ProThirteenModel iphone1415ProThirteenModelObj =
      Iphone1415ProThirteenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
