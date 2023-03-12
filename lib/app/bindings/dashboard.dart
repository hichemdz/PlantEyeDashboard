import 'package:get/get.dart';
import 'package:nuterra_dash_plants/app/controllers/dashboardController.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController(), fenix: true);
  }
}
