import 'package:desafio_flutter/controller/controller.dart';
import 'package:desafio_flutter/helper/elevated_button_widget.dart';
import 'package:desafio_flutter/helper/snackbar_widget.dart';
import 'package:desafio_flutter/helper/txt_form_field/txt_form_field_widget.dart';
import 'package:desafio_flutter/shared/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 64, left: 20, right: 20, bottom: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: SvgPicture.asset('assets/logo.svg'),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 65),
                child: Text(
                  'ESQUECEU A SENHA',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: AppColor.purple,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Text(
                  'Informe seu e-mail para recuperar sua senha',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 56),
                child: TxtFormFieldWidget(
                  labelText: 'E-mail',
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (String value) {
                    controller.user = value;
                  },
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomElevatedButton(
                      text: 'Enviar',
                      onPressed: () {
                        Navigator.popAndPushNamed(context, '/events');
                        // SnackbarForgetPassword.success.show(context);
                        // SnackbarForgetPassword.error.show(context);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
