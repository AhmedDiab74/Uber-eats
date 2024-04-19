import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ubereats/view/auth_sceen/mobile_login_screen.dart';
import 'package:ubereats/view/auth_sceen/otp_screen.dart';
import 'package:ubereats/view/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:ubereats/view/browse/browse.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, _, __) {
      return const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          home: BottomNavigationBarUberEats());
    });
  }
}
