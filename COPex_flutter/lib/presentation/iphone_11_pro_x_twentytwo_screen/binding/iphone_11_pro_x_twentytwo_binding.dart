import '../../../core/app_export.dart';
import '../controller/iphone_11_pro_x_twentytwo_controller.dart';

/// A binding class for the Iphone11ProXTwentytwoScreen.
///
/// This class ensures that the Iphone11ProXTwentytwoController is created when the
/// Iphone11ProXTwentytwoScreen is first loaded.
class Iphone11ProXTwentytwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone11ProXTwentytwoController());
  }
}
