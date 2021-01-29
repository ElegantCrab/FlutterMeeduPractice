import 'package:flutter/material.dart';

import 'package:flutter_meedu/state.dart';
import 'package:fluttermeedu/src/controllers/login_controller.dart';
import 'package:fluttermeedu/src/controllers/login_controller2.dart';
import 'package:fluttermeedu/src/controllers/login_state.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<LoginController2>(
      create: (context) => LoginController2(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _crearNombreUsuario(),
              _crearPasswordUsuario()
            ],
          ),
        )
      ),
    );
  }

  _crearNombreUsuario() {

    return StateBuilder<LoginController2, LoginState>(
      builder: (controller){
        return Column(
          children: [
            TextField(
              decoration: InputDecoration(
                helperText: "Nombre Usuario",
                counterText: controller.state.userName,
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              onChanged: (text) => controller.onUserNameChanged(text),
            ),
            SizedBox(height: 10),
            Text('${controller.state.userName}'),
          ]
        );
      }
    );

  }

  _crearPasswordUsuario() {
    return StateBuilder<LoginController2, LoginState>(
      builder: (controller){
        return Column(
          children: [
            TextField(
              decoration: InputDecoration(
                helperText: "Password",
                counterText: controller.state.password,
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              onChanged: (text) => controller.onPasswordChanged(text),
            ),
            SizedBox(height: 10),
            Text('${controller.state.password}'),
          ]
        );
      }
    );
  }
}