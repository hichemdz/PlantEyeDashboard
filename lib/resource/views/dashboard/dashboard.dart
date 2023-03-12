import 'package:flutter/material.dart';
import 'package:nuterra_dash_plants/resource/views/dashboard/screens/screens.dart';
import 'package:nuterra_dash_plants/resource/views/layouts/auth.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthLayout(
          lg: LargeScreen(text: 'lg'),
          md: LargeScreen(text: 'md'),
          sm: SmallScreen(text: 'sm'),
          xs: SmallScreen(text: 'xs')),
    );
  }
}
