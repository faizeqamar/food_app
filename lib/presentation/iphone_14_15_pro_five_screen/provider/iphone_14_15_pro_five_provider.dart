import 'package:flutter/material.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/presentation/iphone_14_15_pro_five_screen/models/iphone_14_15_pro_five_model.dart';

/// A provider class for the Iphone1415ProFiveScreen.
///
/// This provider manages the state of the Iphone1415ProFiveScreen, including the
/// current iphone1415ProFiveModelObj

// ignore_for_file: must_be_immutable
class Iphone1415ProFiveProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController cvvController = TextEditingController();

  Iphone1415ProFiveModel iphone1415ProFiveModelObj = Iphone1415ProFiveModel();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    cvvController.dispose();
  }
}
