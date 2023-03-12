import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  RxBool lightControl = false.obs;
  RxBool pumpControl = false.obs;
  RxBool nutrientControl = false.obs;
  RxBool otherControl = false.obs;

  var scaffoldKey = GlobalKey<ScaffoldState>();
  RxBool showAside = false.obs;

  void onChange(val, index) {
    print("$val, $index");
    switch (index) {
      case 0:
        lightControl.value = val;
        break;
      case 1:
        pumpControl.value = val;
        break;
      case 2:
        nutrientControl.value = val;
        break;
      case 3:
        otherControl.value = val;
        break;
    }
  }

  bool getController(index) {
    switch (index) {
      case 0:
        return lightControl.value;

      case 1:
        return pumpControl.value;
      case 2:
        return nutrientControl.value;

      case 3:
        return otherControl.value;
      default:
        return false;
    }
  }

  void toggleDrawer(bool screen) {
    if (screen) {
      showAside.value = !showAside.value;
      update();
    } else {
      scaffoldKey.currentState?.openDrawer();
    }
  }
}
