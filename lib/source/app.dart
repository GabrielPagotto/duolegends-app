import 'package:flutter/material.dart';

import './global.dart';

final Global global = Global();

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: global.appKey,
      navigatorKey: global.navigatorKey,
    );
  }
}
