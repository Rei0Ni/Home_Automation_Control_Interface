import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_home/app/presentation/splash/controller/splash_screen_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: const Color(0xFFF0F4F8),
          child: const Center(
            child: Text(
              'Smart Home',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 50,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial'
              ),
            ),
          ),
        ),
      ),
    );
  }
}
