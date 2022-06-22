import 'package:desafio_flutter/controller/controller.dart';
import 'package:desafio_flutter/helper/elevated_button_widget.dart';
import 'package:desafio_flutter/helper/txt_form_field/txt_form_field_widget.dart';
import 'package:desafio_flutter/helper/txt_form_field/password_field_widget.dart';
import 'package:desafio_flutter/shared/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final Controller controller = Controller();

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
                padding: const EdgeInsets.only(bottom: 24),
                child: Text(
                  'LOGIN',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: AppColor.purple,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: TxtFormFieldWidget(
                  labelText: 'E-mail',
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (String value) {
                    controller.user = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: PasswordFieldWidget(
                  onChanged: (String value) {
                    controller.password = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      child: Text(
                        'Esqueceu a senha?',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColor.purple,
                        ),
                      ),
                      onTap: () async {
                        Navigator.popAndPushNamed(context, '/forget');
                      },
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomElevatedButton(
                      text: 'Entrar',
                      onPressed: () {
                        Navigator.popAndPushNamed(context, '/events');
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
