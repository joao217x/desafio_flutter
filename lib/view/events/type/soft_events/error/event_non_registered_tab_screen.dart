import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EventNonRegistered extends StatefulWidget {
  const EventNonRegistered({Key? key}) : super(key: key);

  @override
  State<EventNonRegistered> createState() => _EventNonRegisteredState();
}

class _EventNonRegisteredState extends State<EventNonRegistered> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              'assets/two_clipboards.svg',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              'Não há nenhum evento cadastrado',
            ),
          ),
        ],
      ),
    );
  }
}