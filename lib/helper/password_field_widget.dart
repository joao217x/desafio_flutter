import 'package:flutter/material.dart';

class PasswordFieldWidget extends StatefulWidget {
  const PasswordFieldWidget({Key? key}) : super(key: key);

  @override
  State<PasswordFieldWidget> createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {
  bool isHidden = false;

  void togglePasswordVisibility() {
    setState(() {
      isHidden = !isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isHidden,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: 'Senha',
        suffixIcon: IconButton(
          onPressed: togglePasswordVisibility,
          icon: isHidden
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility),
        ),
      ),
    );
  }
}
