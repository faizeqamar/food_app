import 'package:flutter/material.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/presentation/iphone_14_15_pro_one_screen/models/iphone_14_15_pro_one_model.dart';
import '../models/grid_item_model.dart';

/// A provider class for the Iphone1415ProOneScreen.
///
/// This provider manages the state of the Iphone1415ProOneScreen, including the
/// current iphone1415ProOneModelObj

// ignore_for_file: must_be_immutable
class Iphone1415ProOneProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  Iphone1415ProOneModel iphone1415ProOneModelObj = Iphone1415ProOneModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
