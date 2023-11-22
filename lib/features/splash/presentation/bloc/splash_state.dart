part of 'splash_bloc.dart';

enum DogListStatus { initial, loading, success, failure }

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;
  const factory SplashState.loading() = _Loading;
  const factory SplashState.success(List<DogModel> dogList) = _Success;
  const factory SplashState.error(Failure dogListFailure) = _Error;
}
