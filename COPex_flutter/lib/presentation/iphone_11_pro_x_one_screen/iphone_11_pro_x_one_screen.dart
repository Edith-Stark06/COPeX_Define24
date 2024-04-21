import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/iphone_11_pro_x_one_controller.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone11ProXOneScreen extends GetWidget<Iphone11ProXOneController> {
  Iphone11ProXOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.whiteA700,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 141.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 25.h),
                      child: Column(
                        children: [
                          Text(
                            "lbl_login".tr,
                            style: theme.textTheme.displayMedium,
                          ),
                          SizedBox(height: 39.v),
                          CustomTextFormField(
                            controller: controller.useridvalueoneController,
                            hintText: "lbl_user_id".tr,
                            hintStyle: CustomTextStyles.titleMediumRed300,
                            prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(18.h, 14.v, 10.h, 14.v),
                              child: CustomImageView(
                                imagePath: ImageConstant.img001user1,
                                height: 21.v,
                                width: 20.h,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: 50.v,
                            ),
                            borderDecoration: TextFormFieldStyleHelper.fillGray,
                            fillColor: appTheme.gray100,
                          ),
                          SizedBox(height: 36.v),
                          CustomTextFormField(
                            controller: controller.passwordController,
                            hintText: "lbl_password".tr,
                            hintStyle: CustomTextStyles.titleMediumRed300,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(23.h, 14.v, 13.h, 13.v),
                              child: CustomImageView(
                                imagePath: ImageConstant.img002message1,
                                height: 22.adaptSize,
                                width: 22.adaptSize,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: 50.v,
                            ),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText: true,
                            borderDecoration: TextFormFieldStyleHelper.fillGray,
                            fillColor: appTheme.gray100,
                          ),
                          SizedBox(height: 38.v),
                          Text(
                            "msg_forgot_password".tr,
                            style: CustomTextStyles.titleMediumRedA700,
                          ),
                          SizedBox(height: 9.v),
                          GestureDetector(
                            onTap: () {
                              onTapTxtSignup();
                            },
                            child: Text(
                              "lbl_sign_up2".tr,
                              style: CustomTextStyles.titleMediumRedA700,
                            ),
                          ),
                          SizedBox(height: 7.v),
                          CustomElevatedButton(
                            width: 205.h,
                            text: "lbl_login".tr,
                            buttonStyle: CustomButtonStyles.fillRedA,
                            buttonTextStyle: theme.textTheme.titleMedium!,
                            onPressed: () {
                              onTapLogin();
                            },
                          ),
                          SizedBox(height: 255.v),
                          SizedBox(
                            width: 129.h,
                            child: Divider(),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the iphone11ProXTwentyScreen when the action is triggered.
  onTapTxtSignup() {
    Get.toNamed(
      AppRoutes.iphone11ProXTwentyScreen,
    );
  }

  onTapLogin() {}
}
