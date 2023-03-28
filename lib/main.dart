import 'package:dream_11_app/src/splashScreen.dart';
import 'package:dream_11_app/src/user/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ResponsiveSizer(
      builder: (BuildContext, Orientation, ScreenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),
          //home: LoginPage(),
          home: const SplashScreen(),
          //SplashScreen(),
        );
      },
    );
  }

}
