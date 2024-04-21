import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/iphone_11_pro_x_twentytwo_controller.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone11ProXTwentytwoScreen
    extends GetWidget<Iphone11ProXTwentytwoController> {
  Iphone11ProXTwentytwoScreen({Key? key})
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
                  _buildGovernmentStack(),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.h),
                    child: CustomDropDown(
                      icon: Container(
                        margin: EdgeInsets.symmetric(horizontal: 16.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCheckmark,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      hintText: "msg_driving_liscence".tr,
                      hintStyle: CustomTextStyles.titleMediumInterGray50003,
                      items: controller.iphone11ProXTwentytwoModelObj.value
                          .dropdownItemList!.value,
                      borderDecoration: DropDownStyleHelper.fillWhiteA,
                      filled: true,
                      fillColor: appTheme.whiteA700,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  _buildColumnAddharCard(),
                  SizedBox(height: 197.v),
                  CustomElevatedButton(
                    width: 205.h,
                    text: "lbl_next".tr,
                    buttonTextStyle: theme.textTheme.titleMedium!,
                    onPressed: () {
                      onTapNext();
                    },
                  ),
                  SizedBox(height: 102.v),
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
  Widget _buildGovernmentStack() {
    return SizedBox(
      height: 229.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage8,
            height: 229.v,
            width: 375.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 32.h,
                bottom: 9.v,
              ),
              child: Text(
                "msg_government_approved".tr,
                style: CustomTextStyles.titleMediumInterBold,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowEnterAddhar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "msg_enter_addhar_number".tr,
              style: CustomTextStyles.titleSmallInterCyan900,
            ),
            SizedBox(height: 7.v),
            CustomTextFormField(
              width: 189.h,
              controller: controller.numberController,
              hintText: "lbl_number".tr,
              hintStyle: CustomTextStyles.bodyMediumInterGray50002,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.number,
              validator: (value) {
                if (!isNumeric(value)) {
                  return "err_msg_please_enter_valid_number".tr;
                }
                return null;
              },
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 15.v,
              ),
            )
          ],
        ),
        CustomElevatedButton(
          height: 48.v,
          width: 80.h,
          text: "lbl_verify".tr,
          margin: EdgeInsets.only(top: 24.v),
          buttonStyle: CustomButtonStyles.fillGray,
          buttonTextStyle: CustomTextStyles.bodySmallInterGray50,
          onPressed: () {
            onTapVerify();
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildColumnAddharCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32.h),
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomDropDown(
            icon: SizedBox(
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowup,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            hintText: "lbl_addhar_card".tr,
            items: controller
                .iphone11ProXTwentytwoModelObj.value.dropdownItemList1!.value,
            prefix: Container(
              margin: EdgeInsets.only(right: 13.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 32.v,
                width: 30.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 32.v,
            ),
            contentPadding: EdgeInsets.fromLTRB(30.h, 5.v, 30.h, 6.v),
            borderDecoration: DropDownStyleHelper.custom,
          ),
          SizedBox(height: 12.v),
          _buildRowEnterAddhar()
        ],
      ),
    );
  }

  onTapVerify() {}
  onTapNext() {}
}
