import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResponsiveController extends GetxController {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  RxBool open = true.obs;

  toggleDrawer(screen) {
    screen ? open.value = !open.value : scaffoldKey.currentState?.openDrawer();
  }
}
