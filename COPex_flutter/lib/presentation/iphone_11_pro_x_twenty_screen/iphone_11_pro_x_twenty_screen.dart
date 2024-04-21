import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/iphone_11_pro_x_twenty_controller.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone11ProXTwentyScreen extends GetWidget<Iphone11ProXTwentyController> {
  Iphone11ProXTwentyScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.black900,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildUserProfile(),
                  SizedBox(height: 22.v),
                  _buildName(),
                  SizedBox(height: 22.v),
                  _buildAddress(),
                  SizedBox(height: 55.v),
                  _buildNext(),
                  SizedBox(height: 56.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 46.h),
                      child: Text(
                        "msg_already_have_an".tr,
                        style: CustomTextStyles.titleMediumMontserratOnError,
                      ),
                    ),
                  ),
                  SizedBox(height: 25.v),
                  SizedBox(
                    width: 129.h,
                    child: Divider(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserName() {
    return Padding(
      padding: EdgeInsets.only(bottom: 156.v),
      child: CustomTextFormField(
        width: 343.h,
        controller: controller.userNameController,
        hintText: "lbl_name".tr,
        hintStyle: CustomTextStyles.bodyLargeInterGray50003,
        alignment: Alignment.bottomCenter,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 18.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return CustomTextFormField(
      controller: controller.phoneNumberController,
      hintText: "lbl_phone_number".tr,
      hintStyle: CustomTextStyles.bodyLargeInterGray50003,
      textInputType: TextInputType.phone,
      validator: (value) {
        if (!isValidPhone(value)) {
          return "err_msg_please_enter_valid_phone_number".tr;
        }
        return null;
      },
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 18.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
      controller: controller.emailController,
      hintText: "lbl_email_address".tr,
      hintStyle: CustomTextStyles.bodyLargeInterGray50003,
      textInputType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || (!isValidEmail(value, isRequired: true))) {
          return "err_msg_please_enter_valid_email".tr;
        }
        return null;
      },
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 18.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return SizedBox(
      height: 393.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage8,
            height: 229.v,
            width: 375.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 393.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  _buildUserName(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildPhoneNumber(),
                          SizedBox(height: 22.v),
                          _buildEmail()
                        ],
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEllipse7,
                      height: 393.v,
                      width: 300.h,
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEllipse8,
                      height: 231.v,
                      width: 213.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(right: 25.h),
                    ),
                  ),
                  Opacity(
                    opacity: 0.1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEllipse9,
                      height: 139.v,
                      width: 124.h,
                      alignment: Alignment.topRight,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 77.h,
                        bottom: 163.v,
                      ),
                      child: Text(
                        "lbl_giridharan_r_e".tr,
                        style: CustomTextStyles.titleLargeInterWhiteA700,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildName() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomTextFormField(
        controller: controller.nameController,
        hintText: "lbl_father_s_name".tr,
        hintStyle: CustomTextStyles.bodyLargeInterGray50003,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 18.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddress() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomTextFormField(
        controller: controller.addressController,
        hintText: "lbl_address".tr,
        hintStyle: CustomTextStyles.bodyLargeInterGray50003,
        textInputAction: TextInputAction.done,
        maxLines: 5,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 10.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNext() {
    return CustomElevatedButton(
      width: 205.h,
      text: "lbl_next".tr,
      buttonTextStyle: theme.textTheme.titleMedium!,
      onPressed: () {
        onTapNext();
      },
    );
  }

  /// Navigates to the iphone11ProXTwentyoneScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(
      AppRoutes.iphone11ProXTwentyoneScreen,
    );
  }
}
