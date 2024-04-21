import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/iphone_11_pro_x_twentytwo_model.dart';

/// A controller class for the Iphone11ProXTwentytwoScreen.
///
/// This class manages the state of the Iphone11ProXTwentytwoScreen, including the
/// current iphone11ProXTwentytwoModelObj
class Iphone11ProXTwentytwoController extends GetxController {
  TextEditingController numberController = TextEditingController();

  Rx<Iphone11ProXTwentytwoModel> iphone11ProXTwentytwoModelObj =
      Iphone11ProXTwentytwoModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  @override
  void onClose() {
    super.onClose();
    numberController.dispose();
  }

  onSelected(dynamic value) {
    for (var element
        in iphone11ProXTwentytwoModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    iphone11ProXTwentytwoModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element
        in iphone11ProXTwentytwoModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    iphone11ProXTwentytwoModelObj.value.dropdownItemList1.refresh();
  }
}
