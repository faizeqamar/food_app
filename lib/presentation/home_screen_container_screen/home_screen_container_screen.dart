import 'models/home_screen_container_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/presentation/home_screen_page/home_screen_page.dart';
import 'package:faiz_e_s_application1/widgets/custom_bottom_app_bar.dart';
import 'package:faiz_e_s_application1/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'provider/home_screen_container_provider.dart';

class HomeScreenContainerScreen extends StatefulWidget {
  const HomeScreenContainerScreen({Key? key}) : super(key: key);

  @override
  HomeScreenContainerScreenState createState() =>
      HomeScreenContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeScreenContainerProvider(),
        child: HomeScreenContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class HomeScreenContainerScreenState extends State<HomeScreenContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homeScreenPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(context, routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomAppBar(context),
            floatingActionButton: CustomFloatingButton(
                height: 59, width: 62, child: Icon(Icons.add)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreenPage;
      case BottomBarEnum.Searchblack900:
        return "/";
      case BottomBarEnum.Bag:
        return "/";
      case BottomBarEnum.Favorite:
        return "/";
      case BottomBarEnum.Account:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homeScreenPage:
        return HomeScreenPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
