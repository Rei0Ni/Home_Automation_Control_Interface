import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_home/app/presentation/dashboard/controller/dashboard_controller.dart';
import 'package:smart_home/app/widget/drawer_widget.dart';
import 'package:smart_home/app/widget/user_avatar_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  DashboardController controller = DashboardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F4F8),
      appBar: AppBar(
        backgroundColor: Color(0xffF0F4F8),
        elevation: 0,
        actions: [
          UserAvatarWidget()
        ],
      ),
      body: GetBuilder(
        init: controller,
        builder: (DashboardController controller) {
          return ListView(
            children: controller.areas,
          );
        },
      ),
      drawer: DrawerWidget(),
    );
  }
}
