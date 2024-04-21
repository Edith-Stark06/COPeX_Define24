import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/iphone_11_pro_x_twenty_model.dart';

/// A controller class for the Iphone11ProXTwentyScreen.
///
/// This class manages the state of the Iphone11ProXTwentyScreen, including the
/// current iphone11ProXTwentyModelObj
class Iphone11ProXTwentyController extends GetxController {
  TextEditingController userNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  Rx<Iphone11ProXTwentyModel> iphone11ProXTwentyModelObj =
      Iphone11ProXTwentyModel().obs;

  @override
  void onClose() {
    super.onClose();
    userNameController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    nameController.dispose();
    addressController.dispose();
  }
}
