import 'package:flutter/material.dart';
import 'package:job_time/app/modules/project/register/controller/project_register_controller.dart';
import 'package:validatorless/validatorless.dart';

class ProjectRegisterPage extends StatefulWidget {
  final ProjectRegisterController controller;

  const ProjectRegisterPage({super.key, required this.controller});

  @override
  State<ProjectRegisterPage> createState() => _ProjectRegisterPageState();
}

class _ProjectRegisterPageState extends State<ProjectRegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameEc = TextEditingController();
  final _estimateEc = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _nameEc.dispose();
    _estimateEc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Criar novo projeto',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextFormField(
                controller: _nameEc,
                decoration: const InputDecoration(
                  label: Text('Nome do projeto'),
                ),
                validator: Validatorless.required('Nome Obrigatório'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                  controller: _estimateEc,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text('Estimativa de horas'),
                  ),
                  validator: Validatorless.multiple([
                    Validatorless.required('Estimativa Obrigatório'),
                    Validatorless.number('Somente números é permitido'),
                  ])),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 49,
                child: ElevatedButton(
                  onPressed: () {
                    final FormValid =
                        _formKey.currentState?.validate() ?? false;
                    if (FormValid) {}
                  },
                  child: Text('Salvar'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
