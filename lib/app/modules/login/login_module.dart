import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_time/app/modules/login/login_page.dart';

class LoginModule extends Module {
  @override
  List<Bind> get binds => [];

  List<ModularRoute> get routes => [
        ChildRoute('/', child: ((context, args) => const LoginPage())),
      ];
}