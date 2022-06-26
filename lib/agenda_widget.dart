import 'package:desafio_flutter/view/events/tabs_screen.dart';
import 'package:desafio_flutter/view/events/new_event_screen.dart';
import 'package:desafio_flutter/view/events/type/my_events/tabs/successful/my_event_info_tab.dart';
import 'package:desafio_flutter/view/events/type/soft_events/tabs/successful/soft_event_info_tab.dart';
import 'package:desafio_flutter/view/events/type/soft_events/tabs/successful/soft_event_place_tab.dart';
import 'package:desafio_flutter/view/login/forget_password_screen.dart';
import 'package:desafio_flutter/view/login/login_screen.dart';
import 'package:desafio_flutter/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/forget': (context) => const ForgetPasswordScreen(),
        '/newEvent': (context) => const NewEventScreen(),
        '/tabs': (context) => const TabsScreen(),
        '/softEventInfo': (context) => const SoftEventInfoTab(),
        '/softEventPlace': (context) => const SoftEventPlaceTab(),
        '/myEventInfo': (context) => const MyEventInfoTab(),
      },
    );
  }
}
