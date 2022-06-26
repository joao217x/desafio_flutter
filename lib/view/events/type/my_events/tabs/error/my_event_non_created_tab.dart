import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyEventNonCreatedTab extends StatefulWidget {
  const MyEventNonCreatedTab({Key? key}) : super(key: key);

  @override
  State<MyEventNonCreatedTab> createState() => _MyEventNonCreatedTabState();
}

class _MyEventNonCreatedTabState extends State<MyEventNonCreatedTab> {
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
              'Você ainda não criou nenhum evento',
            ),
          ),
        ],
      ),
    );
  }
}