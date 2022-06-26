import 'package:desafio_flutter/service/agenda_client.dart';
import 'package:desafio_flutter/shared/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyEventListTab extends StatefulWidget {
  const MyEventListTab({Key? key}) : super(key: key);

  @override
  State<MyEventListTab> createState() => _MyEventListTabState();
}

class _MyEventListTabState extends State<MyEventListTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // itemCount: snapshot.data!.length,
      itemBuilder: (context, index) {
        // controller.eventModelList = snapshot.data;
        // controller.eventModel = controller.eventModelList![index];

        return Padding(
          padding: const EdgeInsets.only(
            top: 25,
            right: 16,
            left: 16,
            bottom: 60,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                IntrinsicHeight(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.popAndPushNamed(context, '/myEventInfo');
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'SEX',
                                style: TextStyle(color: AppColor.grey),
                              ),
                              Text('03/06'),
                            ],
                          ),
                        ),
                        const VerticalDivider(
                          thickness: 2,
                          width: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                'assets/event_header.svg',
                                fit: BoxFit.fitHeight,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                // controller.eventModelList!.length
                                'aaaaaaaaa',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 4),
                              const SizedBox(
                                width: 300,
                                child: Text(
                                  'Vamos celebrar? Sim! Teve reforma da sede, gravação de vídeo, registro fotográfico e uma nova marca está por vir… Isso tudo merece um brinde do nosso jeito: o primeiro Happy Soft Hour de 2022! vamos bibibi',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColor.grey,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: const [
                                  Text(
                                    '17:00',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: AppColor.orange,
                                    ),
                                  ),
                                  Text(
                                    '  -  ',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '20:00',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: AppColor.orange,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Icon(
                                    Icons.room,
                                    color: AppColor.grey,
                                  ),
                                  Text(
                                    'Rua Manoel Pedro Bernardo,...',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColor.grey,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Ver no mapa',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColor.purple,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () async {
                                  await AgendaClient().getListaEventos();
                                },
                                child: const Text('botao'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
