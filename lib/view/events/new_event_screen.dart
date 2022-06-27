import 'package:desafio_flutter/controller/controller.dart';
import 'package:desafio_flutter/shared/theme/app_color.dart';
import 'package:desafio_flutter/shared/util/mask.dart';
import 'package:desafio_flutter/shared/widgets/appbar_widget.dart';
import 'package:desafio_flutter/shared/widgets/elevated_button_widget.dart';
import 'package:desafio_flutter/shared/widgets/snackbar_widget.dart';
import 'package:desafio_flutter/shared/widgets/txt_form_field_widget.dart';
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
          Navigator.popAndPushNamed(context, '/tabs');
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
                      controller.setEventName(value);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: TxtFormFieldWidget(
                    labelText: 'Descrição do evento',
                    keyboardType: TextInputType.text,
                    onChanged: (String value) {
                      controller.setEventDesc(value);
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
                              controller.setDate(value);
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
                              controller.setTimeStart(value);
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
                              controller.setTimeEnd(value);
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
                          initialValue: controller.setCep(controller.cep),
                          labelText: 'CEP',
                          keyboardType: TextInputType.number,
                          mask: Mask.cep,
                          onChanged: (String value) {
                            controller.setCep(value);
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
                          : () async {
                              if (await controller.getCep(controller.cep) ==
                                  null) {
                                SnackbarCep.error.show(context);
                              }
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
                          key: Key(controller.setStreet()),
                          initialValue: controller.setStreet(),
                          labelText: 'Rua',
                          keyboardType: TextInputType.text,
                          onChanged: (String value) {
                            controller.setStreet();
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 75,
                      child: TxtFormFieldWidget(
                        labelText: 'Número',
                        keyboardType: TextInputType.number,
                        onChanged: (String value) {
                          controller.setNumber(value);
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: TxtFormFieldWidget(
                    key: Key(controller.setNeighbourhood()),
                    initialValue: controller.setNeighbourhood(),
                    labelText: 'Bairro',
                    keyboardType: TextInputType.text,
                    onChanged: (String value) {
                      controller.setNeighbourhood();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: TxtFormFieldWidget(
                    key: Key(controller.setCity()),
                    initialValue: controller.setCity(),
                    labelText: 'Cidade',
                    keyboardType: TextInputType.text,
                    onChanged: (String value) {
                      controller.setCity();
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
