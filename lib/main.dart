import 'package:bmi_calculator_app/provider/provider.dart';
import 'package:bmi_calculator_app/views/home/Screens/home.dart';
import 'package:bmi_calculator_app/views/home/Screens/result.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => BMIProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        ResultPage.routeName: (context) => ResultPage(),
      },
    );
  }
}
