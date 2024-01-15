import 'package:flutter/material.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/presentation/iphone_14_15_pro_nine_screen/models/iphone_14_15_pro_nine_model.dart';

/// A provider class for the Iphone1415ProNineScreen.
///
/// This provider manages the state of the Iphone1415ProNineScreen, including the
/// current iphone1415ProNineModelObj

// ignore_for_file: must_be_immutable
class Iphone1415ProNineProvider extends ChangeNotifier {
  TextEditingController addressEditTextController = TextEditingController();

  TextEditingController cityEditTextController = TextEditingController();

  TextEditingController townValueEditTextController = TextEditingController();

  TextEditingController streetValueEditTextController = TextEditingController();

  Iphone1415ProNineModel iphone1415ProNineModelObj = Iphone1415ProNineModel();

  @override
  void dispose() {
    super.dispose();
    addressEditTextController.dispose();
    cityEditTextController.dispose();
    townValueEditTextController.dispose();
    streetValueEditTextController.dispose();
  }
}
