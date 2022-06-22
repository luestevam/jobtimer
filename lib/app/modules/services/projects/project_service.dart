import 'package:job_time/app/modules/services/projects/project_service_impl.dart';

import '../view_models/project_model.dart';

abstract class ProjectService {
  Future<void> register(ProjectModel projectModel);
}
