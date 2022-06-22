import 'package:desafio_flutter/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class PasswordFieldWidget extends StatefulWidget {
  final Function(String) onChanged;

  const PasswordFieldWidget({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<PasswordFieldWidget> createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {
  Function(String)? onChanged;

  Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return TextFormField(
        obscureText: controller.isHidden,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          labelText: 'Senha',
          suffixIcon: IconButton(
            onPressed: controller.togglePasswordVisibility,
            icon: controller.isHidden
                ? const Icon(Icons.visibility_off)
                : const Icon(Icons.visibility),
          ),
        ),
        onChanged: onChanged,
      );
    });
  }
}
