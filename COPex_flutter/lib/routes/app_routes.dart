import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import '../presentation/iphone_11_pro_x_one_screen/binding/iphone_11_pro_x_one_binding.dart';
import '../presentation/iphone_11_pro_x_one_screen/iphone_11_pro_x_one_screen.dart';
import '../presentation/iphone_11_pro_x_thirteen_screen/binding/iphone_11_pro_x_thirteen_binding.dart';
import '../presentation/iphone_11_pro_x_thirteen_screen/iphone_11_pro_x_thirteen_screen.dart';
import '../presentation/iphone_11_pro_x_twenty_screen/binding/iphone_11_pro_x_twenty_binding.dart';
import '../presentation/iphone_11_pro_x_twenty_screen/iphone_11_pro_x_twenty_screen.dart';
import '../presentation/iphone_11_pro_x_twentyone_screen/binding/iphone_11_pro_x_twentyone_binding.dart';
import '../presentation/iphone_11_pro_x_twentyone_screen/iphone_11_pro_x_twentyone_screen.dart';
import '../presentation/iphone_11_pro_x_twentytwo_screen/binding/iphone_11_pro_x_twentytwo_binding.dart';
import '../presentation/iphone_11_pro_x_twentytwo_screen/iphone_11_pro_x_twentytwo_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String iphone11ProXThirteenScreen =
      '/iphone_11_pro_x_thirteen_screen';

  static const String iphone11ProXOneScreen = '/iphone_11_pro_x_one_screen';

  static const String iphone11ProXTwentyScreen =
      '/iphone_11_pro_x_twenty_screen';

  static const String iphone11ProXTwentyoneScreen =
      '/iphone_11_pro_x_twentyone_screen';

  static const String iphone11ProXTwentytwoScreen =
      '/iphone_11_pro_x_twentytwo_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: iphone11ProXThirteenScreen,
      page: () => Iphone11ProXThirteenScreen(),
      bindings: [Iphone11ProXThirteenBinding()],
    ),
    GetPage(
      name: iphone11ProXOneScreen,
      page: () => Iphone11ProXOneScreen(),
      bindings: [Iphone11ProXOneBinding()],
    ),
    GetPage(
      name: iphone11ProXTwentyScreen,
      page: () => Iphone11ProXTwentyScreen(),
      bindings: [Iphone11ProXTwentyBinding()],
    ),
    GetPage(
      name: iphone11ProXTwentyoneScreen,
      page: () => Iphone11ProXTwentyoneScreen(),
      bindings: [Iphone11ProXTwentyoneBinding()],
    ),
    GetPage(
      name: iphone11ProXTwentytwoScreen,
      page: () => Iphone11ProXTwentytwoScreen(),
      bindings: [Iphone11ProXTwentytwoBinding()],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [AppNavigationBinding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => Iphone11ProXThirteenScreen(),
      bindings: [Iphone11ProXThirteenBinding()],
    )
  ];
}
