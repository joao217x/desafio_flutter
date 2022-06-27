import 'package:desafio_flutter/view/events/type/my_events/tabs/error/my_event_non_created_tab.dart';
import 'package:desafio_flutter/view/events/type/my_events/tabs/successful/my_event_list_tab.dart';
import 'package:flutter/material.dart';

class MyEventsController extends StatefulWidget {
  const MyEventsController({Key? key}) : super(key: key);

  @override
  State<MyEventsController> createState() => _MyEventsControllerState();
}

class _MyEventsControllerState extends State<MyEventsController> {
  @override
  Widget build(BuildContext context) {
    return const MyEventListTab();
    // TAB ERRO
    // const MyEventNonCreatedTab();
    // TAB SUCESSO
    // const MyEventListTab();
  }
}
