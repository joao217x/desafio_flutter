import 'dart:developer';
import 'package:desafio_flutter/model/event/event_model.dart';
import 'package:desafio_flutter/service/agenda_client.dart';
import 'package:flutter/material.dart';

class SoftEventListScreen extends StatefulWidget {
  const SoftEventListScreen({Key? key}) : super(key: key);

  @override
  State<SoftEventListScreen> createState() => _SoftEventListScreenState();
}

class _SoftEventListScreenState extends State<SoftEventListScreen> {
  List<EventModel> eventList = [];

  @override
  void initState() {
    initialLoad();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView.builder(
            itemCount: eventList.length,
            shrinkWrap: true,
            padding: const EdgeInsets.all(10),
            physics: const ScrollPhysics(),
            itemBuilder: (context, index) {
              return card(eventList[index]);
            },
          ),
          ElevatedButton(
            onPressed: () async {
              final result = await AgendaClient().getListaEventos();
              setState(() {});

              inspect(result);
            },
            child: const Text('botao'),
          ),
        ],
      ),
    );
  }

  Future<void> initialLoad() async {
    eventList = await AgendaClient().getListaEventos();
  }

  Widget card(EventModel event) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text('nome do evento: ${event.name}'),
            Text('descrição do evento: ${event.description}'),
            Text('rua do evento: ${event.address.rua}'),
          ],
        ),
      ),
    );
  }
}
