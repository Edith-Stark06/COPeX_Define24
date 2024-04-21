import '../../../core/app_export.dart';
import '../controller/iphone_11_pro_x_one_controller.dart';

/// A binding class for the Iphone11ProXOneScreen.
///
/// This class ensures that the Iphone11ProXOneController is created when the
/// Iphone11ProXOneScreen is first loaded.
class Iphone11ProXOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone11ProXOneController());
  }
}
