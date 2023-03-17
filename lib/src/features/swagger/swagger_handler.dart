import 'dart:async';

import 'package:shelf/shelf.dart';
import 'package:shelf_swagger_ui/shelf_swagger_ui.dart';

FutureOr<Response> swaggerHandler(Request request) {
  final path = 'specs/src/swagger.yaml';
  final handler = SwaggerUI(
    path,
    title: 'Backend CP',
    deepLink: true,
  );
  return handler(request);
}
