import 'package:flutter/material.dart';
import 'package:nuterra_dash_plants/resource/views/dashboard/widgets/widgets.dart';
import 'package:nuterra_dash_plants/resource/views/widgets/widgets.dart';

class LargeScreen extends StatelessWidget {
  final String text;

  const LargeScreen({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LeftAside(),
        Expanded(
            child: Content(
          text: text,
        ))
      ],
    );
  }
}
