import 'package:crypo_wallet/view/constants/ui.dart';
import 'package:crypo_wallet/view/screens/landing/landing_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Wallet',
      theme: ThemeData(
        primaryColor: kCustomBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Poppins',
      ),
      home: const LandingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
