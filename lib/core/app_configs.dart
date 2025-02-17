import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:segmento_de_moteis/controller/motel_controller.dart';
import 'package:segmento_de_moteis/data/api/motel_api.dart';
import 'package:segmento_de_moteis/locator.dart';
import 'package:segmento_de_moteis/ui/pages/go_now_page.dart';
import 'package:segmento_de_moteis/ui/pages/go_other_day_page.dart';
import 'package:segmento_de_moteis/ui/pages/home_page.dart';

class AppConfig {

  static Map<String, WidgetBuilder> routes = {
    HomePage.id: (context) => HomePage(motelApi: locator<MotelApi>(),),
    GoNowPage.id: (context) => GoNowPage(motelApi: locator<MotelApi>(),),
    GoOtherDayPage.id: (context) => const GoOtherDayPage(),
  };

  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (context) => MotelController()),
  ];

}