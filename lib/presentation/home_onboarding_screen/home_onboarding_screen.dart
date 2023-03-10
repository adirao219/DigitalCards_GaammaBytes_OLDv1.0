import 'controller/home_onboarding_controller.dart';
import 'package:digitalcards/core/app_export.dart';
import 'package:flutter/material.dart';

class HomeOnboardingScreen extends GetWidget<HomeOnboardingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.deepOrangeA100,
            body: Container(
                width: size.width,
                padding: getPadding(top: 32, bottom: 32),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(360.00),
                          width: size.width,
                          margin: getMargin(top: 12),
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgVector,
                                height: getVerticalSize(332.00),
                                width: getHorizontalSize(340.00),
                                alignment: Alignment.center),
                            CustomImageView(
                                imagePath: ImageConstant.imgPortraityoung,
                                height: getVerticalSize(360.00),
                                width: getHorizontalSize(375.00),
                                alignment: Alignment.center)
                          ])),
                      Container(
                          width: getHorizontalSize(341.00),
                          margin: getMargin(left: 17, right: 17),
                          padding: getPadding(
                              left: 37, top: 34, right: 37, bottom: 34),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder40),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                    padding: getPadding(top: 33),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgGaammabyteslogo,
                                              height: getVerticalSize(26.00),
                                              width: getHorizontalSize(31.00)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgGaammabyteslogo24x181,
                                              height: getVerticalSize(24.00),
                                              width: getHorizontalSize(181.00),
                                              margin: getMargin(top: 1))
                                        ])),
                                Container(
                                    width: getHorizontalSize(267.00),
                                    margin: getMargin(top: 44),
                                    child: Text("msg_platform_to_create".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtNunitoSansExtraBold24
                                            .copyWith(
                                                height:
                                                    getVerticalSize(1.00)))),
                                Container(
                                    width: getHorizontalSize(203.00),
                                    margin: getMargin(top: 30),
                                    decoration: AppDecoration.outlineBlack9003f,
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              padding: getPadding(
                                                  left: 51,
                                                  top: 19,
                                                  right: 51,
                                                  bottom: 19),
                                              decoration: AppDecoration
                                                  .fillPink900
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder31),
                                              child: InkWell(
                                                  onTap: () {
                                                    Get.toNamed(AppRoutes
                                                        .welcomeScreen);
                                                  },
                                                  child: Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Text(
                                                          "lbl_get_starteed".tr,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtNunitoSansBlack16
                                                              .copyWith(
                                                                  height: getVerticalSize(
                                                                      1.00))))))
                                        ]))
                              ]))
                    ]))));
  }
}
