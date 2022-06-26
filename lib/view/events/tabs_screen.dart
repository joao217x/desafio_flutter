import 'package:desafio_flutter/controller/controller.dart';
import 'package:desafio_flutter/shared/theme/app_color.dart';
import 'package:desafio_flutter/shared/widgets/appbar_widget.dart';
import 'package:desafio_flutter/shared/widgets/tab_widget.dart';
import 'package:desafio_flutter/view/events/type/my_events/my_event_tabs_screen.dart';
import 'package:desafio_flutter/view/events/type/soft_events/soft_event_tabs_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final Controller mobxController = Controller();

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
                  SoftEventTabsScreen(),
                  MyEventTabsScreen(),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: SizedBox(
          height: 38,
          width: 265,
          child: FloatingActionButton.extended(
            backgroundColor: AppColor.purple,
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
