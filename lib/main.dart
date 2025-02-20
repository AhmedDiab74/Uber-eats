import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:ubereats/controller/provider/mobile_auth_provider/mobile_auth_provider.dart';
import 'package:ubereats/firebase_options.dart';
import 'package:ubereats/view/auth_sceen/mobile_login_screen.dart';
import 'package:ubereats/view/auth_sceen/otp_screen.dart';
import 'package:ubereats/view/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:ubereats/view/browse/browse.dart';
import 'package:ubereats/view/sign_in_logic_screen/sign_in_logic_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, _, __) {
        return MultiProvider(
            providers: [
              ChangeNotifierProvider<MobileAuthProvider>(
                create: (_) => MobileAuthProvider(),
              ),
            ],
            child: const MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                home: SignInLogicScreen()));
      },
    );
  }
}
