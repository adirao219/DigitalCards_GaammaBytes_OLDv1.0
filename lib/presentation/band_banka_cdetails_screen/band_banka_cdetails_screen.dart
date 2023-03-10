import 'package:digitalcards/core/app_export.dart';
import 'package:digitalcards/core/utils/validation_functions.dart';
import 'package:digitalcards/widgets/app_bar/appbar_iconbutton.dart';
import 'package:digitalcards/widgets/app_bar/appbar_image.dart';
import 'package:digitalcards/widgets/app_bar/appbar_title.dart';
import 'package:digitalcards/widgets/app_bar/custom_app_bar.dart';
import 'package:digitalcards/widgets/custom_button.dart';
import 'package:digitalcards/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class BandBankaCdetailsScreen extends StatefulWidget {
  const BandBankaCdetailsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BandBankaCdetailsScreen createState() => _BandBankaCdetailsScreen();
}

class _BandBankaCdetailsScreen extends State<BandBankaCdetailsScreen> {
  final TextEditingController _ico_group_controller = TextEditingController();
  final TextEditingController _acc_number_controller = TextEditingController();
  final TextEditingController _bank_name_controller = TextEditingController();
  final TextEditingController _branch_name_controller = TextEditingController();
  final TextEditingController _ifsc_code_controller = TextEditingController();
  final TextEditingController _micr_code_controller = TextEditingController();
  final TextEditingController _acc_holder_name_controller =
      TextEditingController();
  final TextEditingController _acc_type_controller = TextEditingController();
  final TextEditingController _swift_code_controller = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                          text: "lbl_bands2".tr.toUpperCase(),
                          margin: getMargin(
                              left: 152, top: 60, right: 151, bottom: 7)),
                      AppbarIconbutton(
                          svgPath: ImageConstant.imgArrowleft,
                          margin: getMargin(left: 25, top: 44, right: 298),
                          onTap: onTapArrowleft34)
                    ])),
                styleType: Style.bgStyle_35),
            body: Form(
                key: _formKey,
                child: Container(
                    width: size.width,
                    padding:
                        getPadding(left: 24, top: 20, right: 24, bottom: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: getHorizontalSize(286.00),
                              margin: getMargin(left: 12),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_card_name_ex3".tr,
                                        style: TextStyle(
                                            color: ColorConstant.pink900,
                                            fontSize: getFontSize(18),
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w700,
                                            height: getVerticalSize(1.00))),
                                    TextSpan(
                                        text: "msg_band_type_ex_bank".tr,
                                        style: TextStyle(
                                            color: ColorConstant.pink900,
                                            fontSize: getFontSize(18),
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w600,
                                            height: getVerticalSize(1.00))),
                                    TextSpan(
                                        text: "lbl2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.pink900,
                                            fontSize: getFontSize(18),
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w600,
                                            height: getVerticalSize(1.00)))
                                  ]),
                                  textAlign: TextAlign.left)),
                          CustomTextFormField(
                              width: 326,
                              focusNode: FocusNode(),
                              controller: _acc_holder_name_controller,
                              hintText: "msg_a_c_holder_name".tr,
                              margin: getMargin(left: 1, top: 26),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              width: 326,
                              focusNode: FocusNode(),
                              controller: _bank_name_controller,
                              hintText: "lbl_bank_name".tr,
                              margin: getMargin(left: 1, top: 23),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              width: 326,
                              focusNode: FocusNode(),
                              controller: _branch_name_controller,
                              hintText: "lbl_branch_name".tr,
                              margin: getMargin(left: 1, top: 23),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              width: 326,
                              focusNode: FocusNode(),
                              controller: _acc_type_controller,
                              hintText: "lbl_a_c_type".tr,
                              margin: getMargin(left: 1, top: 23)),
                          CustomTextFormField(
                              width: 326,
                              focusNode: FocusNode(),
                              controller: _acc_number_controller,
                              hintText: "lbl_a_c_number".tr,
                              margin: getMargin(left: 1, top: 23),
                              textInputType: TextInputType.number,
                              validator: (value) {
                                if (!isNumeric(value)) {
                                  return "Please enter valid number";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              width: 326,
                              focusNode: FocusNode(),
                              controller: _ifsc_code_controller,
                              hintText: "lbl_ifsc_code".tr,
                              margin: getMargin(left: 1, top: 23)),
                          CustomTextFormField(
                              width: 326,
                              focusNode: FocusNode(),
                              controller: _micr_code_controller,
                              hintText: "lbl_micr_code".tr,
                              margin: getMargin(left: 1, top: 23)),
                          CustomTextFormField(
                              width: 326,
                              focusNode: FocusNode(),
                              controller: _swift_code_controller,
                              hintText: "lbl_swift_code".tr,
                              margin: getMargin(left: 1, top: 23, bottom: 5),
                              textInputAction: TextInputAction.done)
                        ]))),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 24, right: 25, bottom: 55),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(height: 62, width: 326, text: "lbl_save".tr)
                    ]))));
  }

  onTapArrowleft34() {
    Get.back();
  }
}
