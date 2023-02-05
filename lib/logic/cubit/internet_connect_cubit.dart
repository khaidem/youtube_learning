import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:youtube_learning/constants/emun.dart';

part 'internet_connect_state.dart';

class InternetConnectCubit extends Cubit<InternetConnectState> {
  final Connectivity connectivity;
  StreamSubscription? streamSubscription;
  InternetConnectCubit(this.connectivity) : super(InternetConnectLoading()) {
    streamSubscription = connectivity.onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.wifi) {
        emitInternet(ConnectionType.wifi);
      } else if (event == ConnectivityResult.mobile) {
        emitInternet(ConnectionType.mobile);
      } else if (event == ConnectivityResult.none) {
        emitInternetDiscionnect();
      }
    });
  }

  void emitInternet(ConnectionType connectionType) =>
      emit(InternetConnected(connectionType: connectionType));

  void emitInternetDiscionnect() => emit(InternetDisconnected());

  @override
  Future<void> close() {
    streamSubscription!.cancel();
    return super.close();
  }
}
