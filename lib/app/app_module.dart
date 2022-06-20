import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_time/app/core/ui/database/database_impl.dart';
import 'package:job_time/app/modules/home/home_module.dart';
import 'package:job_time/app/modules/login/login_module.dart';
import 'package:job_time/app/modules/services/auth/auth_service_impl.dart';
import 'package:job_time/app/modules/services/auth/auth_services.dart';
import 'package:job_time/app/modules/splash/splash_page.dart';

import 'core/ui/database/database.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton<AuthService>((i) => AuthServiceImpl()),
        Bind.lazySingleton<Database>((i) => DatabaseImpl())
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashPage()),
        ModuleRoute('/login', module: LoginModule()),
        ModuleRoute('/home', module: HomeModule()),
      ];
}
