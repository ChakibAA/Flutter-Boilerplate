// Package imports:
import 'package:bloc/bloc.dart';
import 'package:boilerplate/helpers/network_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:

part 'network_state.dart';
part 'network_cubit.freezed.dart';

class NetworkCubit extends Cubit<NetworkState> {
  NetworkCubit() : super(const NetworkState.initial());

  void start() {
    NetworkHelper.observeNetwork(this);
  }
}
