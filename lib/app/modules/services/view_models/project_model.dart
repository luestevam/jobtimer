import 'package:job_time/app/modules/services/view_models/project_task_model.dart';

import '../../../entities/project_status.dart';

class ProjectModel {
  final int? id;
  final String name;
  final int estimate;
  final ProjectStatus status;
  final List<ProjectTaskModel> task;
  ProjectModel({
    this.id,
    required this.name,
    required this.estimate,
    required this.status,
    required this.task,
  });
}
