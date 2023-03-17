import 'package:backend/src/features/auth/auth_module.dart';
import 'package:backend/src/features/swagger/swagger_handler.dart';
import 'package:backend/src/features/user/user_resource.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';
import 'core/core_module.dart';

//Vai concatenar todas as nossas rotas
class AppModule extends Module {
  @override
  List<Module> get imports => [
        CoreModule(),
      ];

//vai receber um array de todas as rotas que iremos trabalhar
  @override
  List<ModularRoute> get routes => [
        Route.get('/', (Request request) => Response.ok('Inicial')),
        Route.get('/documentation/**', swaggerHandler),
        Route.resource(UserResource()),
        Route.module('/auth', module: AuthModule()),
      ];
}
