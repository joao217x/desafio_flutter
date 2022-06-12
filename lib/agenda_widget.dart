
import 'package:desafio_flutter/view/events/event_list_screen.dart';
import 'package:desafio_flutter/view/events/kind/my_events/successful/my_event_info_screen.dart';
import 'package:desafio_flutter/view/events/kind/my_events/successful/my_event_place_screen.dart';
import 'package:desafio_flutter/view/events/kind/soft_events/successful/soft_event_info_screen.dart';
import 'package:desafio_flutter/view/events/kind/soft_events/successful/soft_event_place_screen.dart';
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
        '/events': (context) => const EventListScreen(),
        '/MyEventInfo': (context) => const MyEventInfoScreen(),
        '/SoftEventInfo': (context) => const SoftEventInfoScreen(),
        '/MyEventPlace': (context) => const MyEventPlaceScreen(),
        '/SoftEventPlace': (context) => const SoftEventPlaceScreen(),
      },
    );
  }
}
