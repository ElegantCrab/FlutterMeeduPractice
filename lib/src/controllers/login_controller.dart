import 'package:meedu/state.dart';

class LoginController extends SimpleController {

  String nombreUsuario = '';
  String passwordUsuario = '';

  bool recordarUsuario = false;

  void onChangedNombreUsuario(String nombre){
    nombreUsuario = nombre;
    print(nombreUsuario);
    update();
  }

  void onChangedPasswordUsuario(String password){
    passwordUsuario = password;
    update();
  }
}