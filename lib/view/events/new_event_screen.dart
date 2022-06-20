import 'package:desafio_flutter/helper/appbar_widget.dart';
import 'package:desafio_flutter/helper/txt_form_field/txt_form_field_widget.dart';
import 'package:desafio_flutter/shared/theme/app_color.dart';
import 'package:desafio_flutter/shared/util/mask.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
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
              const Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: TxtFormFieldWidget(
                  labelText: 'Nome do evento',
                  keyboardType: TextInputType.text,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: TxtFormFieldWidget(
                  labelText: 'Descrição do evento',
                  keyboardType: TextInputType.text,
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
              const Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: TxtFormFieldWidget(
                  labelText: 'CEP',
                  keyboardType: TextInputType.number,
                ),
              ),
              Row(
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: TxtFormFieldWidget(
                        labelText: 'Rua',
                        keyboardType: TextInputType.text,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 75,
                    child: Expanded(
                      child: TxtFormFieldWidget(
                        labelText: 'Número',
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: TxtFormFieldWidget(
                  labelText: 'Bairro',
                  keyboardType: TextInputType.text,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: TxtFormFieldWidget(
                  labelText: 'Cidade',
                  keyboardType: TextInputType.text,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        height: 38,
        width: 265,
        child: FloatingActionButton.extended(
          backgroundColor: AppColor.newBrandingPurple500,
          label: const Text(
            'Adicionar evento',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
