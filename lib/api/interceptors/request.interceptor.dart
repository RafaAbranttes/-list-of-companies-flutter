import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:list_of_companies/storage/storage.dart';

class MyRequestInterceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) async {
    if (!request.url.contains("login")) {
      return applyHeaders(request, {
        'access-token': await Storage.getUserData().accessToken,
        'client': await Storage.getUserData().client,
        'uid': await Storage.getUserData().uid,
      });
    } else {
      return request;
    }
  }
}
