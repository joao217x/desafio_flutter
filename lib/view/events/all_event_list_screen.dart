import 'package:desafio_flutter/controller/controller.dart';
import 'package:desafio_flutter/helper/appbar_widget.dart';
import 'package:desafio_flutter/helper/tab_widget.dart';
import 'package:desafio_flutter/shared/theme/app_color.dart';
import 'package:desafio_flutter/view/events/type/my_events/error/event_non_created_tab_screen.dart';
import 'package:desafio_flutter/view/events/type/my_events/successful/my_event_list_tab_screen.dart';
import 'package:desafio_flutter/view/events/type/soft_events/error/event_load_error_tab_screen.dart';
import 'package:desafio_flutter/view/events/type/soft_events/error/event_non_registered_tab_screen.dart';
import 'package:desafio_flutter/view/events/type/soft_events/successful/soft_event_info_screen.dart';
import 'package:desafio_flutter/view/events/type/soft_events/successful/soft_event_list_tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class AllEventListScreen extends StatefulWidget {
  const AllEventListScreen({Key? key}) : super(key: key);

  @override
  State<AllEventListScreen> createState() => _AllEventListScreenState();
}

class _AllEventListScreenState extends State<AllEventListScreen> {
  final Controller mobxController = Controller();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: Observer(builder: (_) {
          return Column(
            children: const [
              SizedBox(
                height: 55,
                child: CustomTabWidget(),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    // ##### SOFT EVENTOS #####
                    SoftEventListScreen(), // -> lista de eventos
                    // EventLoadError(), // -> erro no loading dos eventos
                    // EventNonRegistered(), // - > nenhum evento cadastrado

                    // ##### MEUS EVENTOS #####
                    MyEventListScreen(), // -> lista de eventos
                    // EventNonCreated() // -> nenhum evento criado
                  ],
                ),
              ),
            ],
          );
        }),
        floatingActionButton: SizedBox(
          height: 38,
          width: 265,
          child: FloatingActionButton.extended(
            backgroundColor: AppColor.purple,
            label: const Text(
              'Criar novo evento',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            onPressed: () {
              Navigator.popAndPushNamed(context, '/newEvent');
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
