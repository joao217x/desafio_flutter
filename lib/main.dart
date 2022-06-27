import 'package:desafio_flutter/agenda_widget.dart';
import 'package:desafio_flutter/controller/controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MultiProvider(
      providers: [
        Provider<Controller>(
          create: (_) => Controller(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
