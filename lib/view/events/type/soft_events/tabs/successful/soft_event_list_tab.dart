import 'dart:developer';

import 'package:desafio_flutter/controller/controller.dart';
import 'package:desafio_flutter/shared/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SoftEventListTab extends StatefulWidget {
  const SoftEventListTab({Key? key}) : super(key: key);

  @override
  State<SoftEventListTab> createState() => _SoftEventListTabState();
}

class _SoftEventListTabState extends State<SoftEventListTab> {
  Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Padding(
        padding:
            const EdgeInsets.only(top: 25, right: 16, left: 16, bottom: 60),
        child: ListView.builder(
          itemCount: controller.eventModel.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.popAndPushNamed(context, '/softEventInfo');
              },
              child: Column(
                children: [
                  IntrinsicHeight(
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
                                controller.eventModel[index].name,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 4),
                              SizedBox(
                                width: 300,
                                child: Text(
                                  controller.eventModel[index].description,
                                  style: const TextStyle(
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
                                children: [
                                  const Icon(
                                    Icons.room,
                                    color: AppColor.grey,
                                  ),
                                  Text(
                                    controller.eventModel[index].address.rua,
                                    style: const TextStyle(
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 23)
                ],
              ),
            );
          },
        ),
      );
    });
  }
}
