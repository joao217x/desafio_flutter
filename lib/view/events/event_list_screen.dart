import 'package:desafio_flutter/controller/controller.dart';
import 'package:desafio_flutter/helper/appbar_widget.dart';
import 'package:desafio_flutter/helper/tab_widget.dart';
import 'package:desafio_flutter/shared/theme/app_color.dart';
import 'package:desafio_flutter/view/events/type/my_events/error/event_non_created.dart';
import 'package:desafio_flutter/view/events/type/soft_events/error/event_load_error.dart';
import 'package:flutter/material.dart';

class EventListScreen extends StatefulWidget {
  const EventListScreen({Key? key}) : super(key: key);

  @override
  State<EventListScreen> createState() => _EventListScreenState();
}

class _EventListScreenState extends State<EventListScreen> {
  final Controller _controller = Controller();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: Column(
          children: const [
            SizedBox(
              height: 55,
              child: CustomTabWidget(),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // SOFT EVENTOS
                  EventLoadError(),
                  // MEUS EVENTOS
                  EventNonCreated()
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: SizedBox(
          height: 38,
          width: 265,
          child: FloatingActionButton.extended(
            backgroundColor: AppColor.newBrandingPurple500,
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
