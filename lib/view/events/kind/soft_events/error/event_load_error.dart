import 'package:desafio_flutter/shared/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventLoadError extends StatefulWidget {
  const EventLoadError({Key? key}) : super(key: key);

  @override
  State<EventLoadError> createState() => _EventLoadErrorState();
}

class _EventLoadErrorState extends State<EventLoadError> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              'assets/event_load_error.svg',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              'Ocorreu um erro ao carregar os eventos',
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
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
