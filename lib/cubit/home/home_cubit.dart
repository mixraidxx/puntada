import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:puntada/services/home/HomeService.dart';

import '../../models/ClientModel.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeInitial());

  final _service = HomeService();

  getQr() async {
    emit(const HomeLoading());
    final qr = await _service.getQrCode();
    if (qr.isNotEmpty) {
      emit(HomeSuccess(qr));
    } else {
      emit(const HomeFailure());
    }
  }

  getClientData(String clientID) async {
    emit(const ClientdataLoading());
    final data = await _service.getClientData(clientID);
    print(data);
    if (data != null) {
      final clientdata = ClientDataResponse.fromJson(json.decode(data));
      print(clientdata.toString());
      emit(ClientdataSuccess(clientdata));
    } else {
      emit(const ClientdataFailure());
    }
  }
}
