import 'package:flutter/cupertino.dart';

class CardControlModel {
  final String title;
  final IconData icon;
  final bool defaultValue;

  const CardControlModel(
      {required this.title, required this.icon, required this.defaultValue});
}
