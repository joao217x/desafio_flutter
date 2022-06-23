import 'package:desafio_flutter/controller/controller.dart';
import 'package:desafio_flutter/helper/appbar_widget.dart';
import 'package:desafio_flutter/helper/elevated_button_widget.dart';
import 'package:desafio_flutter/helper/snackbar_widget.dart';
import 'package:desafio_flutter/helper/txt_form_field_widget.dart';
import 'package:desafio_flutter/shared/theme/app_color.dart';
import 'package:desafio_flutter/shared/util/mask.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class NewEventScreen extends StatefulWidget {
  const NewEventScreen({Key? key}) : super(key: key);

  @override
  State<NewEventScreen> createState() => _NewEventScreenState();
}

class _NewEventScreenState extends State<NewEventScreen> {
  Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarNavigator(
        title: 'Adicionar evento',
        onPressed: () {
          Navigator.popAndPushNamed(context, '/events');
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Observer(builder: (_) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'INFORMAÇÕES DO EVENTO',
                  style: TextStyle(
                    color: Color.fromRGBO(121, 121, 121, 1),
                    fontSize: 8,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: TxtFormFieldWidget(
                    labelText: 'Nome do evento',
                    keyboardType: TextInputType.text,
                    onChanged: (String value) {
                      controller.eventName = value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: TxtFormFieldWidget(
                    labelText: 'Descrição do evento',
                    keyboardType: TextInputType.text,
                    onChanged: (String value) {
                      controller.eventDesc = value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 24),
                          child: TxtFormFieldWidget(
                            labelText: 'Data',
                            keyboardType: TextInputType.datetime,
                            hintText: '  /  /  ',
                            mask: Mask.date,
                            onChanged: (String value) {
                              controller.date = value;
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 24),
                          child: TxtFormFieldWidget(
                            labelText: 'Início',
                            keyboardType: TextInputType.datetime,
                            hintText: '00:00',
                            mask: Mask.time,
                            onChanged: (String value) {
                              controller.timeStart = value;
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 24),
                          child: TxtFormFieldWidget(
                            labelText: 'Término',
                            keyboardType: TextInputType.datetime,
                            hintText: '00:00',
                            mask: Mask.time,
                            onChanged: (String value) {
                              controller.timeEnd = value;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'INFORMAÇÕES DO LOCAL',
                  style: TextStyle(
                    color: Color.fromRGBO(121, 121, 121, 1),
                    fontSize: 8,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: TxtFormFieldWidget(
                          labelText: 'CEP',
                          keyboardType: TextInputType.number,
                          mask: Mask.cep,
                          onChanged: (String value) {
                            controller.cep = value;
                          },
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: AppColor.purple,
                      ),
                      onPressed: controller.cep.length != 8
                          ? null
                          : () {
                              // ERRO
                              // SnackbarCep.error.show(context);
                              // SUCESSO
                            },
                      child: const Icon(Icons.search),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 22),
                        child: TxtFormFieldWidget(
                          labelText: 'Rua',
                          keyboardType: TextInputType.text,
                          onChanged: (String value) {
                            controller.street = value;
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 75,
                      child: Expanded(
                        child: TxtFormFieldWidget(
                          labelText: 'Número',
                          keyboardType: TextInputType.number,
                          onChanged: (String value) {
                            controller.number = value;
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: TxtFormFieldWidget(
                    labelText: 'Bairro',
                    keyboardType: TextInputType.text,
                    onChanged: (String value) {
                      controller.neighbourhood = value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: TxtFormFieldWidget(
                    labelText: 'Cidade',
                    keyboardType: TextInputType.text,
                    onChanged: (String value) {
                      controller.city = value;
                    },
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomElevatedButton(
                        text: 'Adicionar evento',
                        onPressed: () {
                          // ERRO
                          // SnackbarAddEvent.error.show(context);
                          // SUCESSO
                          // SnackbarAddEvent.success.show(context);                          
                          // Navigator.popAndPushNamed(context, '/events');
                        },
                      ),
                    ),
                  ],
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
