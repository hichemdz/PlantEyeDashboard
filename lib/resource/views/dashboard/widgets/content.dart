import 'package:flutter/material.dart';

import 'cardControlSection.dart';

class Content extends StatelessWidget {
  final String text;

  const Content({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 30, right: 30, left: 30),
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              //color: StyleConfig.whiteGray,
              borderRadius: BorderRadius.circular(25)),
          padding: const EdgeInsets.only(top: 30, right: 30, left: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ControlSection(),
              const SizedBox(
                height: 40,
              ),
              //const CameraShots(),
              const SizedBox(
                height: 30,
              ),
              // StateGeneral(
              //   chartDataBar: chartDataBar,
              //   chartDataLine: chartDataLine,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
