import 'package:desafio_flutter/view/events/type/my_events/my_event_tabs_screen.dart';
import 'package:desafio_flutter/view/events/type/my_events/tabs/error/my_event_non_created_tab.dart';
import 'package:desafio_flutter/view/events/type/my_events/tabs/successful/my_event_info_tab.dart';
import 'package:desafio_flutter/view/events/type/soft_events/soft_event_tabs_screen.dart';
import 'package:desafio_flutter/view/events/type/soft_events/tabs/error/soft_event_load_error_tab.dart';
import 'package:desafio_flutter/view/events/type/soft_events/tabs/error/soft_event_non_registered_tab.dart';
import 'package:desafio_flutter/view/events/type/soft_events/tabs/successful/soft_event_info_tab.dart';
import 'package:desafio_flutter/view/events/type/soft_events/tabs/successful/soft_event_list_tab.dart';
import 'package:desafio_flutter/view/events/type/soft_events/tabs/successful/soft_event_place_tab.dart';
import 'package:flutter/material.dart';

abstract class AppScreens {
  static List<Widget> softScreens = [
    const SoftEventTabsScreen(),
    const SoftEventListTab(),
    const SoftEventInfoTab(),
    const SoftEventPlaceTab(),
    const SoftEventLoadErrorTab(),
    const SoftEventNonRegisteredTab(),
  ];

  static List<Widget> myScreens = [
    const MyEventTabsScreen(),
    const MyEventInfoTab(),
    const MyEventNonCreatedTab(),
  ];
}
