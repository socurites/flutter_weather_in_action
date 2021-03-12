import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_weather_in_action/models/src/app_settings.dart';
import 'package:flutter_weather_in_action/page/page_container.dart';
import 'package:flutter_weather_in_action/styles.dart';

void main() {
  AppSettings settings = AppSettings();

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((_) => runApp(
      MyApp(settings: settings),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key key, this.settings}) : super(key: key);

  final AppSettings settings;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      fontFamily: "Cabin",
      primaryColor: AppColor.midnightSky,
      accentColor: AppColor.midnightCloud,
      primaryTextTheme: Theme.of(context).textTheme.apply(
        bodyColor: AppColor.textColorDark,
        displayColor: AppColor.textColorDark,
      ),
      textTheme: Theme.of(context).textTheme.apply(
        bodyColor: AppColor.textColorDark,
        displayColor: AppColor.textColorDark,
      ),
    );

    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: true,
      theme: theme,
      home: PageContainer(settings: settings),
    );
  }
}