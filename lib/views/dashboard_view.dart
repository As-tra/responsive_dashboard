import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      backgroundColor: kbgColor,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: const Color(0xfff5f5f5),
              leading: IconButton(
                onPressed: () {
                  key.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: kprimaryColor,
                ),
              ),
            )
          : null,
      drawer: const CustomDrawer(),
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
