part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({required List<DogModel> dogList}) = _Initial;
  const factory HomeState.searched({required List<DogModel> dogList}) = _Searched;
  const factory HomeState.generated({required List<DogModel> dogList, required String url}) = _Generated;
}
