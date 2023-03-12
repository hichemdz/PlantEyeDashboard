import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuterra_dash_plants/route/name.dart';

class LeftAside extends StatelessWidget {
  const LeftAside({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.blueAccent,
      child: ListView.builder(
        itemCount: RouteName.routeMaps.length,
        itemBuilder: (context, index) {
          Map singleRoute = RouteName.routeMaps[index];
          return NavLink(
              name: singleRoute['name'],
              path: singleRoute['path'],
              icon: singleRoute['icon']);
        },
      ),
    );
  }
}

class NavLink extends StatelessWidget {
  final String path;
  final String name;
  final IconData icon;

  const NavLink(
      {Key? key, required this.name, required this.path, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.toNamed(path);
      },
      title: Text(
        name,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
      ),
      leading: Icon(icon),
    );
  }
}
