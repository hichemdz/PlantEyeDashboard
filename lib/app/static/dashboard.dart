import 'package:flutter/material.dart';
import 'package:nuterra_dash_plants/app/models/cardControll.dart';

List<CardControlModel> listCardControl = const [
  CardControlModel(
      title: 'Light Control', icon: Icons.light_mode, defaultValue: false),
  CardControlModel(
      title: 'Pumps control', icon: Icons.add_alert_sharp, defaultValue: false),
  CardControlModel(
      title: 'Nutrients control',
      icon: Icons.no_food_outlined,
      defaultValue: false),
  CardControlModel(
      title: 'Other Control',
      icon: Icons.account_tree_outlined,
      defaultValue: false),
];
