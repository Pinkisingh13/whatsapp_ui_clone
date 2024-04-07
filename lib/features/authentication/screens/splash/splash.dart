import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_ui/features/authentication/screens/welcome/welcome.dart';
import 'package:whatsapp_ui/utils/constants/image_strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Get.offAll(()=> const WelcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          // padding: PSpacingStyle.paddingWithAppBarHeight,
          // padding: EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //  --- Logo ---
              Expanded(
                flex: 2,
                child: Image(
                  image: AssetImage(PImages.lightAppLogo),
                  height: 70,
                  width: 70,
                ),
              ),

              // --- Meta Image ---
              Expanded(
                flex: 1,
                child: Image(
                  image: AssetImage(PImages.meta),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
