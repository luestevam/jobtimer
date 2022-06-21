enum ProjectStatus {
  n_iniciado(label: 'Não Iniciado'),
  em_andamento(label: 'Em Andamento'),
  finalizado(label: 'Finalizado');

  final String label;

  const ProjectStatus({required this.label});
}
