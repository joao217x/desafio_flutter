import 'package:desafio_flutter/model/event/event_model.dart';
import 'package:desafio_flutter/view/events/type/my_events/tabs/error/my_event_non_created_tab.dart';
import 'package:desafio_flutter/view/events/type/my_events/tabs/successful/my_event_info_tab.dart';
import 'package:desafio_flutter/view/events/type/my_events/tabs/successful/my_event_list_tab.dart';
import 'package:flutter/material.dart';

class MyEventTabsScreen extends StatefulWidget {
  const MyEventTabsScreen({Key? key}) : super(key: key);

  @override
  State<MyEventTabsScreen> createState() => _MyEventTabsScreenState();
}

class _MyEventTabsScreenState extends State<MyEventTabsScreen> {
  @override
  Widget build(BuildContext context) {
    return const MyEventListTab();
    // TAB ERRO
    // const MyEventNonCreatedTab();
    // TAB SUCESSO
    // const MyEventListTab();
    // const MyEventInfoTab();
  }
}
