import 'package:flutter/material.dart';
import 'package:plant_shop/view/login/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff92D722),
          primary: const Color(0xff92D722),
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xffE7F9DA),
      ),
      home: const LoginView(),
    );
  }
}
