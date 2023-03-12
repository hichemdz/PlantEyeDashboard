import 'package:flutter/material.dart';
import 'package:nuterra_dash_plants/resource/views/dashboard/widgets/widgets.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Content(
      text: text,
    );
  }
}
