import 'package:desafio_flutter/shared/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class SoftEventPlaceTab extends StatefulWidget {
  const SoftEventPlaceTab({Key? key}) : super(key: key);

  @override
  State<SoftEventPlaceTab> createState() => _SoftEventPlaceTabState();
}

class _SoftEventPlaceTabState extends State<SoftEventPlaceTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarNavigator(
        title: 'Local do evento',
        onPressed: () {
          Navigator.popAndPushNamed(context, '/softEventInfo');
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.all(32),
              child: Center(
                child: Text('TELA DE LOCAL DO EVENTO'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
