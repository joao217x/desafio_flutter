import 'package:desafio_flutter/model/event/event_model.dart';
import 'package:desafio_flutter/view/events/type/soft_events/tabs/error/soft_event_load_error_tab.dart';
import 'package:desafio_flutter/view/events/type/soft_events/tabs/error/soft_event_non_registered_tab.dart';
import 'package:desafio_flutter/view/events/type/soft_events/tabs/successful/soft_event_list_tab.dart';
import 'package:flutter/material.dart';

class SoftEventTabController extends StatefulWidget {
  const SoftEventTabController({Key? key}) : super(key: key);

  @override
  State<SoftEventTabController> createState() => _SoftEventTabControllerState();
}

class _SoftEventTabControllerState extends State<SoftEventTabController> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<EventModel>>(
      // future: agendaClient.getListaEventos(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            // return const SoftEventNonRegisteredTab();
          case ConnectionState.waiting:
          case ConnectionState.active:
            // return const SoftEventLoadErrorTab();
          case ConnectionState.done:
            return const SoftEventListTab();
        }
      },
    );
  }
}
