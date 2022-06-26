import 'package:desafio_flutter/model/event/event_model.dart';
import 'package:desafio_flutter/view/events/type/soft_events/tabs/successful/soft_event_list_tab.dart';
import 'package:flutter/material.dart';

class SoftEventTabsScreen extends StatefulWidget {
  const SoftEventTabsScreen({Key? key}) : super(key: key);

  @override
  State<SoftEventTabsScreen> createState() => _SoftEventTabsScreenState();
}

class _SoftEventTabsScreenState extends State<SoftEventTabsScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<EventModel>>(
      // future: agendaClient.getListaEventos(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          // return const EventLoadError();
          case ConnectionState.waiting:
          case ConnectionState.active:
          // return const EventNonRegistered();
          case ConnectionState.done:
            return const SoftEventListTab();
        }
      },
    );
  }
}
