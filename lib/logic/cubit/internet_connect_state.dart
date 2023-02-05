part of 'internet_connect_cubit.dart';

abstract class InternetConnectState extends Equatable {
  const InternetConnectState();

  @override
  List<Object> get props => [];
}

class InternetConnectLoading extends InternetConnectState {}

class InternetConnected extends InternetConnectState {
  final ConnectionType connectionType;

  const InternetConnected({required this.connectionType});
}

class InternetDisconnected extends InternetConnectState {}
