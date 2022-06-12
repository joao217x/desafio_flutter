import 'package:flutter/material.dart';

class MyEventInfoScreen extends StatefulWidget {
  const MyEventInfoScreen({Key? key}) : super(key: key);

  @override
  State<MyEventInfoScreen> createState() => _MyEventInfoScreenState();
}

class _MyEventInfoScreenState extends State<MyEventInfoScreen> {
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
                child: Text('TELA DE INFO DO EVENTO'),
              ),
            ),
            Center(
              child: GestureDetector(
                child: const Text('AVANÇAR (PARA LOCAL DO EVENTO)'),
                onTap: () async {
                  Navigator.popAndPushNamed(context, '/eventPlace');
                },
              ),
            ),
            Center(
              child: GestureDetector(
                child: const Text('VOLTAR (PARA EVENTOS)'),
                onTap: () async {
                  Navigator.popAndPushNamed(context, '/events');
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
