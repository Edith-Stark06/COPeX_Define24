import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/iphone_11_pro_x_twentyone_model.dart';

/// A controller class for the Iphone11ProXTwentyoneScreen.
///
/// This class manages the state of the Iphone11ProXTwentyoneScreen, including the
/// current iphone11ProXTwentyoneModelObj
class Iphone11ProXTwentyoneController extends GetxController {
  Rx<Iphone11ProXTwentyoneModel> iphone11ProXTwentyoneModelObj =
      Iphone11ProXTwentyoneModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  onSelected(dynamic value) {
    for (var element
        in iphone11ProXTwentyoneModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    iphone11ProXTwentyoneModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element
        in iphone11ProXTwentyoneModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    iphone11ProXTwentyoneModelObj.value.dropdownItemList1.refresh();
  }
}
