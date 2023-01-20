import 'package:cost_app_dinamica/constants/components.dart';
import 'package:cost_app_dinamica/domain/services/get_material_color.dart';
import 'package:cost_app_dinamica/ui/routes/custom_routes.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "cost_app_dinamica",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: getMaterialColor(primary)),
      builder: (context, child) {
        return ResponsiveWrapper.builder(
            ClampingScrollWrapper.builder(context, child!),
            maxWidth: 1920,
            minWidth: 450,
            defaultScale: true,
            breakpoints: [
              const ResponsiveBreakpoint.resize(450, name: MOBILE),
              const ResponsiveBreakpoint.resize(600, name: "MOBILE_LARGE"),
              const ResponsiveBreakpoint.autoScale(800, name: TABLET),
              const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
              const ResponsiveBreakpoint.resize(1350, name: "DESKTOP_LARGE"),
              const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
            ],
            background: Container(color: const Color(0xFFF5F5F5)));
      },
      initialRoute: '/',
      routes: customRoutes,
    );
  }
}
