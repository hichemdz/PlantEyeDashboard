import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuterra_dash_plants/app/controllers/dashboardController.dart';
//import 'package:webdash/core/constant/dashboard/dashboard.dart';

import 'package:nuterra_dash_plants/app/helpers/helpers.dart';
import 'package:nuterra_dash_plants/app/static/dashboard.dart';
import 'package:nuterra_dash_plants/app/static/style.dart';

class ControlSection extends GetResponsiveView<DashboardController> {
  ControlSection({Key? key}) : super(key: key, alwaysUseBuilder: true);

  @override
  Widget builder() {
    return GridView.builder(
      itemCount: listCardControl.length,
      physics: const AlwaysScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              MediaResponsive.mediaGrid(screen: screen, lg: 4, md: 2, sm: 1),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          mainAxisExtent: 130),
      itemBuilder: (context, index) => CardControl(
        icon: listCardControl[index].icon,
        title: "${listCardControl[index].title} ",
        index: index,
      ),
    );
  }
}

class CardControl extends GetView<DashboardController> {
  const CardControl(
      {Key? key, required this.icon, required this.title, required this.index})
      : super(key: key);
  final String title;
  final IconData icon;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      bool status = controller.getController(index);

      return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: status ? StyleConfig.orange : Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardIcon(icon: icon, status: status),
                  CardSwitch(index: index, status: status)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: status ? Colors.white : StyleConfig.blueGray,
                        fontWeight: FontWeight.w900,
                        fontSize: 14,
                        letterSpacing: 1.5),
                  ),
                  status
                      ? Text(
                          'On',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: StyleConfig.whiteGray),
                        )
                      : Text(
                          'Off',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: StyleConfig.blueGray),
                        )
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}

class CardIcon extends GetView<DashboardController> {
  final IconData icon;
  final bool status;

  const CardIcon({super.key, required this.icon, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: status ? StyleConfig.orangeClean : StyleConfig.whiteGray),
      child: Icon(
        icon,
        color: status ? Colors.white : StyleConfig.blueGray,
      ),
    );
  }
}

class CardSwitch extends GetView<DashboardController> {
  final int index;
  final bool status;

  const CardSwitch({super.key, required this.index, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: StyleConfig.whiteGray,
      ),
      child: Switch(
          value: status,
          activeColor: StyleConfig.orange,
          activeTrackColor: StyleConfig.whiteGray,
          inactiveTrackColor: StyleConfig.whiteGray,
          splashRadius: 15,
          onChanged: (value) => controller.onChange(value, index)),
    );
  }
}

class CardTitle extends GetView<DashboardController> {
  final String title;
  final bool status;

  const CardTitle({super.key, required this.title, required this.status});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: status ? Colors.white : StyleConfig.blueGray,
          fontWeight: FontWeight.w900,
          fontSize: 14,
          letterSpacing: 1.5),
    );
  }
}
