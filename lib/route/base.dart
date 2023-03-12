import 'package:get/get.dart';
import 'package:nuterra_dash_plants/route/name.dart';

List<GetPage> baseRoute = RouteName.routeMaps
    .map((e) =>
        GetPage(name: e['path'], page: () => e['page'], binding: e['binding']))
    .toList();
