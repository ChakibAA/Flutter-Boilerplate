part of 'network_cubit.dart';

@freezed
class NetworkState with _$NetworkState {
  const factory NetworkState.initial() = _Initial;
  const factory NetworkState.succes() = _Succes;
  const factory NetworkState.failure() = _Failure;
}
