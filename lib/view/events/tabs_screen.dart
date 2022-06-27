import 'dart:developer';

import 'package:desafio_flutter/controller/controller.dart';
import 'package:desafio_flutter/shared/theme/app_color.dart';
import 'package:desafio_flutter/shared/widgets/appbar_widget.dart';
import 'package:desafio_flutter/shared/widgets/tabs_widget.dart';
import 'package:desafio_flutter/view/events/type/my_events/my_events_controller.dart';
import 'package:desafio_flutter/view/events/type/soft_events/soft_events_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context, listen: false);
    // log(controller.hashCode.toString());
    controller.checkLogged();

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppBar(
          logout: controller.isLogged
              ? () async {
                  await controller.logout().then(
                        (_) => Navigator.pushNamedAndRemoveUntil(
                            context, '/login', (route) => false),
                      );
                }
              : null,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 55,
              child: CustomTabWidget(),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SoftEventsController(
                      controller:
                          Provider.of<Controller>(context, listen: false)),
                  const MyEventsController(),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: SizedBox(
          height: 38,
          width: 265,
          child: FloatingActionButton.extended(
            backgroundColor: AppColor.purple,
            label: const Text(
              'Criar novo evento',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            onPressed: () async {
              Navigator.popAndPushNamed(context, '/newEvent');
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
