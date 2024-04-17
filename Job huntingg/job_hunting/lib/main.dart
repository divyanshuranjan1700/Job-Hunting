import 'package:flutter/material.dart';
import 'package:job_hunting/screens/login/signup_screen.dart';
import 'main_screen.dart';
import 'package:get/get.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.indigo,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.indigoAccent,
        ),
      ),
      home: const MainScreen(),
      getPages: [
        GetPage(name: "/LoginScreen", page: () => const LoginScreen()),
        GetPage(name: "/MainScreen", page: () => const MainScreen()),
      ]
    );
  }
} 