import 'package:desafio_flutter/view/events/all_event_list_screen.dart';
import 'package:desafio_flutter/view/events/type/my_events/successful/my_event_info_screen.dart';
import 'package:desafio_flutter/view/events/type/soft_events/successful/soft_event_info_screen.dart';
import 'package:desafio_flutter/view/events/type/soft_events/successful/soft_event_place_screen.dart';
import 'package:desafio_flutter/view/events/new_event_screen.dart';
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
        '/allEvents': (context) => const AllEventListScreen(),
        '/softEventInfo': (context) => const SoftEventInfoScreen(),
        '/softEventPlace': (context) => const SoftEventPlaceScreen(),
        '/myEventInfo': (context) => const MyEventInfoScreen(),
      },
    );
  }
}
