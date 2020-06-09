import 'package:flutter/material.dart';
import 'package:flutterresponsiveuidemo/pages/welcome_screen.dart';
import 'package:flutterresponsiveuidemo/src/size_config.dart';
import 'package:flutterresponsiveuidemo/src/styles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Learning Platform Application',
              theme: AppTheme.lightTheme,
              home: WelcomeScreen(),
            );
          },
        );
      },
    );
  }
}
