import 'package:desafio_flutter/view/events/events_screen.dart';
import 'package:desafio_flutter/view/events/info/event_info_screen.dart';
import 'package:desafio_flutter/view/events/info/event_place_screen.dart';
import 'package:desafio_flutter/view/events/new_event_screen.dart';
import 'package:desafio_flutter/view/login/forget_password_screen.dart';
import 'package:desafio_flutter/view/login/login_screen.dart';
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
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/forget': (context) => const ForgetPasswordScreen(),
        '/newEvent': (context) => const NewEventScreen(),
        '/events': (context) => const EventsScreen(),
        '/eventInfo': (context) => const EventInfoScreen(),
        '/eventPlace': (context) => const EventPlaceScreen(),
      },
    );
  }
}
