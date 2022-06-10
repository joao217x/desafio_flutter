import 'package:flutter/material.dart';

class EmailFieldWidget extends StatefulWidget {
  const EmailFieldWidget({Key? key}) : super(key: key);

  @override
  State<EmailFieldWidget> createState() => _EmailFieldWidgetState();
}

class _EmailFieldWidgetState extends State<EmailFieldWidget> {
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: 'Email',
      ),
    );
  }
}
