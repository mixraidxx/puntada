import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../services/login/LoginService.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginInitial());
  final _service = LoginService();

  login(String email, String password) async {
    emit(const LoginLoading());
    final success = await _service.login(email, password);
    if (success) {
      emit(const LoginSuccess());
    } else {
      emit(const LoginError());
    }
  }
}
