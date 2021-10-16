import 'dart:convert';

import 'package:http/http.dart';

import '../app.dart';

class Http {
  static final Client _client = global.httpClient;

  static const String _scheme = 'http';

  static const String _host = 'localhost:5000';

  static Future<HttpResponse> get(String path, {Map<String, String>? queryParameters}) async {
    final Uri uri = Uri(scheme: _scheme, host: _host, path: path, queryParameters: queryParameters);
    final Response response = await _client.get(uri);

    return HttpResponse(response);
  }

  static Future<HttpResponse> post<T>(String path, T body, {Map<String, String>? queryParamenters}) async {
    final Uri uri = Uri(scheme: _scheme, host: _host, path: path, queryParameters: queryParamenters);
    final Response response = await _client.post(uri, body: body);

    return HttpResponse(response);
  }

  static Future<HttpResponse> put<T>(String path, T body, {Map<String, String>? queryParamenters}) async {
    final Uri uri = Uri(scheme: _scheme, host: _host, path: path, queryParameters: queryParamenters);
    final Response response = await _client.put(uri, body: body);

    return HttpResponse(response);
  }

  static Future<HttpResponse> delete<T>(String path, T body, {Map<String, String>? queryParamenters}) async {
    final Uri uri = Uri(scheme: _scheme, host: _host, path: path, queryParameters: queryParamenters);
    final Response response = await _client.delete(uri, body: body);

    return HttpResponse(response);
  }
}

class HttpResponse {
  late int _statusCode;

  int get status => _statusCode;

  bool get ok => _statusCode == 200 || _statusCode == 201 || _statusCode == 202;

  late dynamic _body;

  dynamic get body => _body;

  HttpResponse(Response response) {
    _statusCode = response.statusCode;
    _body = json.decode(utf8.decode(response.bodyBytes));
  }
}
