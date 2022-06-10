import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
                child: Text('TELA DE ESQUECEU A SENHA'),
              ),
            ),
            Center(
              child: GestureDetector(
                child: const Text('AVANÇAR (PARA NOVO EVENTO)'),
                onTap: () async {
                  Navigator.popAndPushNamed(context, '/newEvent');
                },
              ),
            ),
            Center(
              child: GestureDetector(
                child: const Text('VOLTAR (PARA LOGIN)'),
                onTap: () async {
                  Navigator.popAndPushNamed(context, '/login');
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
