import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:segmento_de_moteis/core/app_configs.dart';
import 'package:segmento_de_moteis/data/api/motel_api.dart';
import 'package:segmento_de_moteis/locator.dart';
import 'package:segmento_de_moteis/ui/pages/home_page.dart';
import 'package:segmento_de_moteis/utils/constants/app_colors.dart';

void main({List<String>? list = const [],Key? providerKey = const Key('')}) {
  Provider.debugCheckInvalidValueType = null;
  setupLocator();
  runApp(MotelsApp(key: providerKey,));
}

class MotelsApp extends StatelessWidget {
  const MotelsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppConfig.providers,
      child: MaterialApp(
        theme: ThemeData(
          textTheme: TextTheme(
            titleLarge: TextStyle(),
            bodyMedium: TextStyle(),
          ).apply(
            bodyColor: AppColors.darkGreyText,
          ),
          fontFamily: 'TitilliumWeb',
        ),
        debugShowCheckedModeBanner: false,
        routes: AppConfig.routes,
        home: HomePage(motelApi: locator<MotelApi>(),),
      ),
    );
  }
}
