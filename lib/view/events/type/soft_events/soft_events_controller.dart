import 'package:desafio_flutter/controller/controller.dart';
import 'package:desafio_flutter/view/events/type/soft_events/tabs/error/soft_event_load_error_tab.dart';
import 'package:desafio_flutter/view/events/type/soft_events/tabs/error/soft_event_non_registered_tab.dart';
import 'package:desafio_flutter/view/events/type/soft_events/tabs/successful/soft_event_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SoftEventsController extends StatefulWidget {
  final Controller controller;
  const SoftEventsController({Key? key, required this.controller})
      : super(key: key);

  @override
  State<SoftEventsController> createState() => _SoftEventsControllerState();
}

class _SoftEventsControllerState extends State<SoftEventsController> {
  @override
  void initState() {
    widget.controller.getListaEventos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final controller = Provider.of<Controller>(context, listen: false);
    // log(controller.hashCode.toString());

    return Observer(builder: (context) {
      return widget.controller.isLoading
          ? const Center(child: CircularProgressIndicator())
          : widget.controller.eventList.isEmpty
              ? const SoftEventNonRegisteredTab()
              : widget.controller.isError
                  ? const SoftEventLoadErrorTab()
                  : ListView.builder(
                      itemCount: widget.controller.eventList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/softEventInfo',
                                arguments: widget.controller.eventList[index]);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 25, right: 16, left: 11),
                            child: SoftEventListTab(
                                event: widget.controller.eventList[index]),
                          ),
                        );
                      },
                    );
    });
  }
}
