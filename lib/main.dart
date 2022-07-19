import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:meta_fit_app/features/splash/presentation/splash_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent, //Status Bar Color
            statusBarIconBrightness: Brightness.dark, //Status Bar Icon Color
          ),
          backgroundColor: Colors.red, // App Bar Color
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    ); //MaterialApp
  }
}
