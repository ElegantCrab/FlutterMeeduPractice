import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  final String userName, password;
  LoginState({
    @required this.userName,
    @required this.password,
  });

  static LoginState get initialState => LoginState(userName: '', password: '');

  LoginState copyWith({
    String userName,
    String password,
  }) {
    return LoginState(
      userName: userName ?? this.userName,
      password: password ?? this.password,
    );
  }

  Map toJson() => {"email": this.userName, "password": this.password};

  @override
  List<Object> get props => [userName, password];
}