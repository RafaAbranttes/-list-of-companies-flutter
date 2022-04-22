import "dart:async";
import 'package:chopper/chopper.dart';

part "auth.service.chopper.dart";

@ChopperApi(baseUrl: "/v1")
abstract class AuthService extends ChopperService {
  static AuthService create([ChopperClient? client]) => _$AuthService(client);

  @Post(path: '/login')
  Future<Response> login(@Body() dynamic body);
}
