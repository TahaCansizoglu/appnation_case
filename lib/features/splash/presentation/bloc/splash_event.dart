part of 'splash_bloc.dart';

@freezed
sealed class SplashEvent with _$SplashEvent {
  const factory SplashEvent.dogListReceived() = _DogListReceived;
}
