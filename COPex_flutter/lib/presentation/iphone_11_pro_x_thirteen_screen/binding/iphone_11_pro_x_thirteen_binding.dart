import '../../../core/app_export.dart';
import '../controller/iphone_11_pro_x_thirteen_controller.dart';

/// A binding class for the Iphone11ProXThirteenScreen.
///
/// This class ensures that the Iphone11ProXThirteenController is created when the
/// Iphone11ProXThirteenScreen is first loaded.
class Iphone11ProXThirteenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone11ProXThirteenController());
  }
}
