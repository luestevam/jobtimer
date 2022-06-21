import 'package:job_time/app/modules/repositories/projects/project_repository.dart';
import 'package:job_time/app/modules/services/view_models/project_model.dart';
import '../../../entities/project.dart';

class ProjectServiceImpl {
  final ProjectRepository _projectRepository;

  ProjectServiceImpl({
    required ProjectRepository projectRepository,
  }) : _projectRepository = projectRepository;

  @override
  Future<void> register(ProjectModel projectModel) async {
    final project = Project()
      ..id = projectModel.id
      ..name = projectModel.name
      ..status = projectModel.status
      ..estimate = projectModel.estimate;

    await _projectRepository.register(project);
  }
}
