import 'package:flutter/material.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/presentation/home_screen_page/models/home_screen_model.dart';
import '../models/userprofilelist_item_model.dart';
import '../models/viewhierarchylist_item_model.dart';
import '../models/menulist_item_model.dart';

/// A provider class for the HomeScreenPage.
///
/// This provider manages the state of the HomeScreenPage, including the
/// current homeScreenModelObj

// ignore_for_file: must_be_immutable
class HomeScreenProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  HomeScreenModel homeScreenModelObj = HomeScreenModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
