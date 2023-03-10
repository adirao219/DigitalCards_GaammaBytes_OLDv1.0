import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/appbar_title.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:digitalcards/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AdvancedScreen extends StatefulWidget {
  const AdvancedScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AdvancedScreen createState() => _AdvancedScreen();
}

class _AdvancedScreen extends State<AdvancedScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(108.00),
                centerTitle: true,
                title: Container(
                    height: getVerticalSize(96.00),
                    width: size.width,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      AppbarImage(
                          height: getVerticalSize(94.00),
                          width: getHorizontalSize(375.00),
                          imagePath: ImageConstant.imgVectorDeepOrangeA100,
                          margin: getMargin(bottom: 2)),
                      AppbarTitle(
                          text: "lbl_advanced".tr.toUpperCase(),
                          margin: getMargin(
                              left: 132, top: 59, right: 129, bottom: 8)),
                      AppbarIconbutton(
                          svgPath: ImageConstant.imgArrowleft,
                          margin: getMargin(left: 25, top: 44, right: 298),
                          onTap: onTapArrowleft26)
                    ])),
                styleType: Style.bgStyle_27),
            body: Container(
                width: size.width,
                padding: getPadding(left: 24, top: 10, right: 24, bottom: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("msg_card_name_ex".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNunitoBold18
                              .copyWith(height: getVerticalSize(1.00))),
                      Container(
                          margin: getMargin(top: 77, right: 8, bottom: 5),
                          padding: getPadding(
                              left: 37, top: 18, right: 37, bottom: 18),
                          decoration: AppDecoration.outlineBlack9003f2.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    margin: getMargin(bottom: 1),
                                    decoration:
                                        AppDecoration.txtOutlineBlack9003f1,
                                    child: Text("msg_remove_from_google".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtNunitoSansRegular14Pink900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.36),
                                                height:
                                                    getVerticalSize(1.26)))),
                                Container(
                                    height: getSize(22.00),
                                    width: getSize(22.00),
                                    margin: getMargin(right: 14, bottom: 3),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.deepOrangeA10099,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(5.00)),
                                        boxShadow: [
                                          BoxShadow(
                                              color: ColorConstant.black9003f,
                                              spreadRadius:
                                                  getHorizontalSize(2.00),
                                              blurRadius:
                                                  getHorizontalSize(2.00),
                                              offset: Offset(0, 4))
                                        ]))
                              ]))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 24, right: 25, bottom: 55),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(height: 62, width: 326, text: "lbl_save".tr)
                    ]))));
  }

  onTapArrowleft26() {
    Get.back();
  }
}
