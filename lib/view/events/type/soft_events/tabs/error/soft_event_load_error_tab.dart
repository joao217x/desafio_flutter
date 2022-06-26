import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SoftEventLoadErrorTab extends StatefulWidget {
  const SoftEventLoadErrorTab({Key? key}) : super(key: key);

  @override
  State<SoftEventLoadErrorTab> createState() => _SoftEventLoadErrorTabState();
}

class _SoftEventLoadErrorTabState extends State<SoftEventLoadErrorTab> {
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
    );
  }
}
