import 'package:flutter/material.dart';

class MyEventPlaceScreen extends StatefulWidget {
  const MyEventPlaceScreen({Key? key}) : super(key: key);

  @override
  State<MyEventPlaceScreen> createState() => _MyEventPlaceScreenState();
}

class _MyEventPlaceScreenState extends State<MyEventPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(32),
              child: Center(
                child: Text('TELA DE LOCAL DO EVENTO'),
              ),
            ),
            Center(
              child: GestureDetector(
                child: const Text('VOLTAR (PARA INFO DO EVENTO)'),
                onTap: () async {
                  Navigator.popAndPushNamed(context, '/eventInfo');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(64),
              child: Center(
                child: GestureDetector(
                  child: const Text('VOLTAR PARA LOGIN'),
                  onTap: () async {
                    Navigator.popAndPushNamed(context, '/login');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
