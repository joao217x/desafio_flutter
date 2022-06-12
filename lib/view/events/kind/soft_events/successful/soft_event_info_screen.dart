import 'package:flutter/material.dart';

class SoftEventInfoScreen extends StatefulWidget {
  const SoftEventInfoScreen({Key? key}) : super(key: key);

  @override
  State<SoftEventInfoScreen> createState() => _SoftEventInfoScreenState();
}

class _SoftEventInfoScreenState extends State<SoftEventInfoScreen> {
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
