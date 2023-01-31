import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:puntada/services/home/HomeService.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeInitial());

  final _service = HomeService();

  getQr() async {
    emit(HomeLoading());
    final qr = await _service.getQrCode();
    if (qr.isNotEmpty) {
      emit(HomeSuccess(qr));
    } else {
      emit(HomeFailure());
    }
  }
}
