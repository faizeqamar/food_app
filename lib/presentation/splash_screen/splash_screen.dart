import 'models/splash_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'provider/splash_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SplashProvider(), child: SplashScreen());
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.onboardingScreenSixScreen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 85.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 98.v,
                                    width: 219.h,
                                    margin: EdgeInsets.only(left: 2.h),
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                  height: 13.v,
                                                  width: 85.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 15.v),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topRight,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgArrowDown,
                                                            height: 13.v,
                                                            width: 85.h,
                                                            alignment: Alignment
                                                                .center),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imageNotFound,
                                                            height: 2.v,
                                                            width: 44.h,
                                                            alignment: Alignment
                                                                .topRight,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 4.v,
                                                                    right: 4.h))
                                                      ]))),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorPrimary,
                                              height: 42.v,
                                              width: 135.h,
                                              alignment: Alignment.bottomLeft),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector19x122,
                                              height: 19.v,
                                              width: 122.h,
                                              alignment: Alignment.bottomLeft,
                                              margin: EdgeInsets.only(
                                                  left: 7.h, bottom: 27.v)),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  width: 130.h,
                                                  margin: EdgeInsets.only(
                                                      left: 7.h,
                                                      right: 81.h,
                                                      bottom: 43.v),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 37.h,
                                                      vertical: 9.v),
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: fs.Svg(
                                                              ImageConstant
                                                                  .imgGroup211),
                                                          fit: BoxFit.cover)),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgSignal,
                                                            height: 16.v,
                                                            width: 15.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 9.v,
                                                                    bottom:
                                                                        10.v)),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgSignalErrorcontainer,
                                                            height:
                                                                12.adaptSize,
                                                            width: 12.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 25.h,
                                                                    top: 24.v))
                                                      ])))
                                        ])),
                                SizedBox(height: 24.v),
                                Text("lbl_super_foodoo".tr,
                                    style: CustomTextStyles
                                        .headlineMediumDeeporange300),
                                SizedBox(height: 38.v)
                              ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgClipPathGroup,
                      height: 852.v,
                      width: 393.h,
                      alignment: Alignment.center)
                ]))));
  }
}
