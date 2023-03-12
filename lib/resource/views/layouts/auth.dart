import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuterra_dash_plants/app/controllers/responsive.dart';

class AuthLayout extends GetResponsiveView<ResponsiveController> {
  AuthLayout({
    super.key,
    required this.lg,
    required this.md,
    required this.sm,
    required this.xs,
  });

  final Widget lg;
  final Widget md;
  final Widget sm;
  final Widget xs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('logo dash'),
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(color: Colors.black),
        elevation: 0.5,
      ),
      drawer: CustomDrawer(screen: screen),
      body: ResponsiveBodyLayout(lg: lg, md: md, sm: sm, xs: xs),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key, required this.screen}) : super(key: key);
  final ResponsiveScreen screen;

  @override
  Widget build(BuildContext context) {
    return Drawer();
  }
}

class ResponsiveBodyLayout extends GetResponsiveView {
  ResponsiveBodyLayout({
    super.key,
    //super.alwaysUseBuilder = false,
    required this.lg,
    required this.md,
    required this.sm,
    required this.xs,
  }) : super(
          settings: const ResponsiveScreenSettings(
              desktopChangePoint: 1483,
              tabletChangePoint: 700,
              watchChangePoint: 600),
        );

  late final Widget lg;
  late final Widget md;
  late final Widget sm;
  late final Widget xs;

  @override
  Widget desktop() => lg;

  @override
  Widget tablet() => md;

  @override
  Widget phone() => sm;

  @override
  Widget watch() => xs;

  @override
  Widget builder() {
    return sm;
  }
}
