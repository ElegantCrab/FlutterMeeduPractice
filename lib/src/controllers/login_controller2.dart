import 'package:meedu/state.dart';

import 'login_state.dart';

class LoginController2 extends StateController<LoginState> {
  LoginController2() : super(LoginState.initialState);

  void onUserNameChanged(String userName) {
    update(
      this.state.copyWith(userName: userName),
    );
  }

  void onPasswordChanged(String password) {
    update(
      this.state.copyWith(password: password),
    );
  }

  @override
  void onStateChanged(LoginState oldState, LoginState currentState) {
    print("oldState ${oldState.toJson()}");
    print("currentState ${currentState.toJson()}\n\n");
  }

}