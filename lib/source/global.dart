import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Global {
  late final GlobalKey _appKey;

  GlobalKey get appKey => _appKey;

  late final GlobalKey<NavigatorState> _navigatorKey;

  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  late final http.Client _httpClient;

  http.Client get httpClient => _httpClient;

  Global()
      : _appKey = GlobalKey(),
        _navigatorKey = GlobalKey<NavigatorState>(),
        _httpClient = http.Client();

  BuildContext get context => _navigatorKey.currentContext!;
}
