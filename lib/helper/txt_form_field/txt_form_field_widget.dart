import 'package:flutter/material.dart';
import 'package:mask_input_formatter/mask_input_formatter.dart';

class TxtFormFieldWidget extends StatelessWidget {
  final String labelText;
  final TextInputType keyboardType;
  final MaskInputFormatter mask;
  final String? hintText;

  const TxtFormFieldWidget({
    Key? key,
    required this.labelText,
    required this.keyboardType,
    required this.mask,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [mask],
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        labelStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

// class EmailFieldWidget extends StatefulWidget {
//   const EmailFieldWidget({Key? key}) : super(key: key);

//   @override
//   State<EmailFieldWidget> createState() => _EmailFieldWidgetState();
// }

// class _EmailFieldWidgetState extends State<EmailFieldWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       keyboardType: keyboardType,
//       decoration: const InputDecoration(
//         labelText: 'Email',
//         labelStyle: TextStyle(
//           fontSize: 14,
//           fontWeight: FontWeight.w400,
//         ),
//       ),
//     );
//   }
// }