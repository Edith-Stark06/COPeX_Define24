import '../../../core/app_export.dart';
import '../controller/iphone_11_pro_x_twenty_controller.dart';

/// A binding class for the Iphone11ProXTwentyScreen.
///
/// This class ensures that the Iphone11ProXTwentyController is created when the
/// Iphone11ProXTwentyScreen is first loaded.
class Iphone11ProXTwentyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone11ProXTwentyController());
  }
}
