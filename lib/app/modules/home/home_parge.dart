import 'package:flutter/material.dart';

import 'package:job_time/app/modules/home/widgets/header_projects_menu.dart';

import '../../core/ui/database/database.dart';
import 'package:job_time/app/entities/project.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: SafeArea(
          child: ListTile(
            title: Text('Sair'),
          ),
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              title: Text('Projetos'),
              expandedHeight: 100,
              toolbarHeight: 100,
              centerTitle: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(
                    15,
                  ),
                ),
              ),
            ),
            SliverPersistentHeader(
              delegate: HeaderProjectsMenu(),
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: Container(color: Colors.red),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    color: Colors.amber,
                  ),
                  Container(
                    color: Colors.black,
                  ),
                  Container(
                    color: Colors.pink,
                  ),
                  Container(
                    color: Colors.amber,
                  ),
                  Container(
                    color: Colors.black,
                  ),
                  Container(
                    color: Colors.pink,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*children: [
          Container(),
          ElevatedButton(
            onPressed: () async {
              final db = Modular.get<Database>();

              final connection = await db.openConnection();
              connection.writeTxn((isar) {
                var project = Project();
                project.name = 'Projeto Teste';
                project.status = ProjectStatus.em_andamento;

                return connection.projects.put(project);
              });
            },
            child: const Text('Cadastrar'),
          ),
        ],*/