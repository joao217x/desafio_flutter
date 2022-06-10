import 'package:desafio_flutter/controller/controller.dart';
import 'package:desafio_flutter/helper/appbar_widget.dart';
import 'package:flutter/material.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  final Controller _controller = Controller();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: const CustomAppBar(
            title: 'Eventos',
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
          body: Column(
            children: [
              const TabBar(
                tabs: [Tab(text: 'Eventos soft'), Tab(text: 'Meus eventos')],
              ),
              TabBarView(
                // physics: const NeverScrollableScrollPhysics(),
                children: [
                  Container(
                    color: Colors.black,
                    child: ListView(),
                  ),
                  Container(
                    color: Colors.red,
                    child: ListView(),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
