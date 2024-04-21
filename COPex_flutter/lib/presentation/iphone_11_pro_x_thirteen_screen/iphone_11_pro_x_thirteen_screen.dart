import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/iphone_11_pro_x_thirteen_controller.dart'; // ignore_for_file: must_be_immutable

class Iphone11ProXThirteenScreen
    extends GetWidget<Iphone11ProXThirteenController> {
  const Iphone11ProXThirteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 85.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 17.h),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage7,
                          height: 300.adaptSize,
                          width: 300.adaptSize,
                        ),
                        SizedBox(height: 42.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage5,
                          height: 119.v,
                          width: 340.h,
                        ),
                        SizedBox(height: 124.v),
                        SizedBox(
                          height: 75.v,
                          width: 282.h,
                          child: CustomElevatedButton(
                            height: 64.v,
                            width: 282.h,
                            text: "lbl_get_started".tr,
                            buttonStyle: CustomButtonStyles.none,
                            decoration:
                                CustomButtonStyles.gradientRedAToRedADecoration,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumInterSemiBold,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Text(
                          "lbl_signup".tr,
                          style: CustomTextStyles.titleMediumInterBlack900,
                        ),
                        SizedBox(height: 32.v),
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
    );
  }
}
