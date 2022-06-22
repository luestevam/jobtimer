import 'package:job_time/app/modules/services/view_models/project_model.dart';

abstract class ProjectService {
  Future<void> register(ProjectModel projectModel);
}
