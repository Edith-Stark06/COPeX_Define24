import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/iphone_11_pro_x_one_model.dart';

/// A controller class for the Iphone11ProXOneScreen.
///
/// This class manages the state of the Iphone11ProXOneScreen, including the
/// current iphone11ProXOneModelObj
class Iphone11ProXOneController extends GetxController {
  TextEditingController useridvalueoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<Iphone11ProXOneModel> iphone11ProXOneModelObj = Iphone11ProXOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    useridvalueoneController.dispose();
    passwordController.dispose();
  }
}
