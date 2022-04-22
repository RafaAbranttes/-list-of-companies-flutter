import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:http/io_client.dart';
import 'interceptors/request.interceptor.dart';
import 'services/auth.service.dart';

final _chopper = ChopperClient(
  baseUrl: "https://empresas.ioasys.com.br/api",
  services: [AuthService.create()],
  interceptors: [
    HttpLoggingInterceptor(),
    MyRequestInterceptor(),
  ],
  client: IOClient(
    HttpClient()..connectionTimeout = const Duration(seconds: 60),
  ),
);

final authService = _chopper.getService<AuthService>();
