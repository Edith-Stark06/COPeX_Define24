import '../../../core/app_export.dart';
import '../controller/iphone_11_pro_x_twentyone_controller.dart';

/// A binding class for the Iphone11ProXTwentyoneScreen.
///
/// This class ensures that the Iphone11ProXTwentyoneController is created when the
/// Iphone11ProXTwentyoneScreen is first loaded.
class Iphone11ProXTwentyoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone11ProXTwentyoneController());
  }
}
