import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_time/app/modules/login/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller;

  const LoginPage({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return BlocListener<LoginController, LoginState>(
      listenWhen: ((previous, current) => previous.status != current.status),
      listener: (context, state) {
        if (state.status == LoginStatus.failure) {
          final message = state.errorMessage ?? 'Erro ao realizar login';
          AsukaSnackbar.alert(message).show();
        }
      },
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0XFF0092B9),
                Color(0XFF0167B2),
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/job_timer.png',
                  height: 200,
                ),
                const SizedBox(height: 20),
                const Text(
                  'JOB TIMER',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: screenSize.height * .1,
                ),
                SizedBox(
                  width: screenSize.width * .8,
                  height: 49,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[200],
                    ),
                    onPressed: () {
                      controller.signIn();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/google.png",
                          height: 30,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Login com Google',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16)),
                        )
                      ],
                    ),
                  ),
                ),
                BlocSelector<LoginController, LoginState, bool>(
                    bloc: controller,
                    selector: (state) {
                      return state.status == LoginStatus.loading;
                    },
                    builder: (context, show) {
                      return Visibility(
                        visible: show,
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Center(
                            child: CircularProgressIndicator.adaptive(
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
