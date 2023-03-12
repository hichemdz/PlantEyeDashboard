import 'package:flutter/material.dart';
import 'package:nuterra_dash_plants/app/bindings/bindings.dart';
import 'package:nuterra_dash_plants/resource/views/views.dart';

class RouteName {
  static const initialRout = '/';
  static const dashboard = '/dashboard';
  static const cameras = '/camera';
  static const sensors = '/sensor';
  static const mesh = '/mesh';
  static const login = '/login';

  static List<Map> routeMaps = [
    {
      'path': initialRout,
      "name": 'dashboard',
      'page': const Dashboard(),
      'icon': Icons.dashboard,
      "binding": DashboardBinding(),
      "middleware": null,
      'is_show': true,
    },
    {
      'path': cameras,
      "name": 'Cameras',
      'page': const Dashboard(),
      'icon': Icons.camera,
      "binding": null,
      "middleware": null,
      'is_show': true,
    },
    {
      'path': sensors,
      "name": 'Sensors',
      'page': const Dashboard(),
      'icon': Icons.sensor_window_outlined,
      "binding": null,
      "middleware": null,
      'is_show': true,
    },
    {
      'path': mesh,
      "name": 'Mesh',
      'page': const Dashboard(),
      'icon': Icons.mediation_sharp,
      "binding": null,
      "middleware": null,
      'is_show': true,
    },
    {
      'path': mesh,
      "name": 'Mesh',
      'page': const Dashboard(),
      'icon': Icons.mediation_sharp,
      "binding": null,
      "middleware": null,
      'is_show': true,
    },
  ];
}

/*


 */
