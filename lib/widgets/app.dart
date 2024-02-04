import 'package:flutter/material.dart';

import 'main_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(textTheme: TextTheme(titleLarge: TextStyle )),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}