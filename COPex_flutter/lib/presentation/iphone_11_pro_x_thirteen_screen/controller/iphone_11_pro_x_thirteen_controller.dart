import '../../../core/app_export.dart';
import '../models/iphone_11_pro_x_thirteen_model.dart';

/// A controller class for the Iphone11ProXThirteenScreen.
///
/// This class manages the state of the Iphone11ProXThirteenScreen, including the
/// current iphone11ProXThirteenModelObj
class Iphone11ProXThirteenController extends GetxController {
  Rx<Iphone11ProXThirteenModel> iphone11ProXThirteenModelObj =
      Iphone11ProXThirteenModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.iphone11ProXOneScreen,
      );
    });
  }
}
