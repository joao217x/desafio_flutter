import 'dart:async';

import 'package:desafio_flutter/shared/theme/app_color.dart';
import 'package:desafio_flutter/view/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const LoginScreen(),
        ),
      ),
    );
    // FutureBuilder(
    //   future: Future.delayed(const Duration(seconds: 3)),
    //   builder: (context, snapshot) => //condição
    //           ?
    //           :
    // );
    return Scaffold(
      backgroundColor: AppColor.newBrandingPurple500,
      body: Center(
        child: SvgPicture.asset('assets/splash.svg'),
      ),
    );
  }
}
