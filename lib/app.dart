import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_ui/features/authentication/screens/splash/splash.dart';
import 'package:whatsapp_ui/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Whatsapp_UI',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
     theme: PAppTheme.lightTheme,
     darkTheme: PAppTheme.darkTheme,
      home: const SplashScreen(),
    );
  }
}

