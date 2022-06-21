import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_time/app/modules/project/register/register_project_page.dart';

class ProjectRegisterModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const ProjectRegisterPage()),
      ];
}
