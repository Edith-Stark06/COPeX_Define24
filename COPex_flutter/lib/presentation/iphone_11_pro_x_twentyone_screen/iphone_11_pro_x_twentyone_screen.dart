import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/iphone_11_pro_x_twentyone_controller.dart'; // ignore_for_file: must_be_immutable

class Iphone11ProXTwentyoneScreen
    extends GetWidget<Iphone11ProXTwentyoneController> {
  const Iphone11ProXTwentyoneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900,
        body: SizedBox(
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
                    items: controller.iphone11ProXTwentyoneModelObj.value
                        .dropdownItemList!.value,
                    borderDecoration: DropDownStyleHelper.fillWhiteA,
                    filled: true,
                    fillColor: appTheme.whiteA700,
                  ),
                ),
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.h),
                  child: CustomDropDown(
                    icon: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCheckmarkCyan900,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    hintText: "lbl_addhar_card".tr,
                    items: controller.iphone11ProXTwentyoneModelObj.value
                        .dropdownItemList1!.value,
                    prefix: Container(
                      margin: EdgeInsets.only(
                        left: 17.h,
                        right: 13.h,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgLock,
                        height: 32.v,
                        width: 30.h,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 64.v,
                    ),
                  ),
                ),
                SizedBox(height: 282.v),
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

  /// Navigates to the iphone11ProXTwentytwoScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(
      AppRoutes.iphone11ProXTwentytwoScreen,
    );
  }
}
