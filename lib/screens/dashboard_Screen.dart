import 'package:dashboard/widgets/adaptive_layout.dart';
import 'package:dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => SizedBox(), 
        tabletLayout: (context) => SizedBox(), 
        desktopLayout: (context) => DashboardDesktopLayout()),
    );
  }
}