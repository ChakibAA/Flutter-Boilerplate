// ignore_for_file: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member

// Package imports:
import 'package:boilerplate/cubits/network_cubit/network_cubit.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

// Project imports:

class NetworkHelper {
  static void observeNetwork(NetworkCubit networkCubit) async {
    Connectivity().onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.none) {
        networkCubit.emit(const NetworkState.failure());
      } else {
        networkCubit.emit(const NetworkState.succes());
      }
    });
  }
}
