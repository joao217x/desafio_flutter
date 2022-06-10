import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  const NewEventScreen({Key? key}) : super(key: key);

  @override
  State<NewEventScreen> createState() => _NewEventScreenState();
}

class _NewEventScreenState extends State<NewEventScreen> {
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
                child: Text('TELA DE NOVO EVENTO'),
              ),
            ),
            Center(
              child: GestureDetector(
                child: const Text('AVANÇAR (PARA INFO DO EVENTO)'),
                onTap: () async {
                  Navigator.popAndPushNamed(context, '/eventInfo');
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