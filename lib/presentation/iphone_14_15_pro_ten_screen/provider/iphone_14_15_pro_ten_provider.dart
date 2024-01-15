import 'package:flutter/material.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/presentation/iphone_14_15_pro_ten_screen/models/iphone_14_15_pro_ten_model.dart';
import '../models/viewhierarchy_item_model.dart';

/// A provider class for the Iphone1415ProTenScreen.
///
/// This provider manages the state of the Iphone1415ProTenScreen, including the
/// current iphone1415ProTenModelObj

// ignore_for_file: must_be_immutable
class Iphone1415ProTenProvider extends ChangeNotifier {
  Iphone1415ProTenModel iphone1415ProTenModelObj = Iphone1415ProTenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
