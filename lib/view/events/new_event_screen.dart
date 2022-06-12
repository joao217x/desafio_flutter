import 'package:desafio_flutter/helper/appbar_widget.dart';
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
      appBar: CustomAppBarNavigator(
        title: 'Adicionar evento',
        onPressed: () async {
          Navigator.popAndPushNamed(context, '/events');
        },
      ),
      body: Column(),
    );
  }
}
