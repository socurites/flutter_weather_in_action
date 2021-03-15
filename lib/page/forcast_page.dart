import 'package:flutter/material.dart';
import 'package:weather_app/utils/flutter_ui_utils.dart' as ui;

class ForcastPage extends StatefulWidget {
  @override
  _ForcastPageState createState() => _ForcastPageState();
}

class _ForcastPageState extends State<ForcastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(ui.appBarHeight(context)),
        child: TransitionAppbar(
          animation: _backgroundColorTween.animate(_animationController),
          title: ColorTransitionText(
            text: _forecastController.selectedHourlyTemperature.city.name,
            style: Theme.of(context).textTheme.headline,
            animation: _textColorTween.animate(_animationController),
          ),
          actionIcon: widget.settingsButton,
          leadingAction: widget.menu,
        ),
      ),
      body: Text('body'),
    );
  }
}
