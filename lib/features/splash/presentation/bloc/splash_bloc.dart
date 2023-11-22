import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/failure/failure.dart';
import '../../domain/models/dog_model.dart';
import '../../domain/repository/dog_repository.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final DogRepository dogRepository;
  SplashBloc({required this.dogRepository}) : super(const _Initial()) {
    on<_DogListReceived>((event, emit) async {
      await getDogListAndOnePhoto(emit);
    });

    add(const _DogListReceived());
  }

  Future<void> getDogListAndOnePhoto(Emitter<SplashState> emit) async {
    emit(const _Loading());
    final response = await dogRepository.getAllBreeds();
    emit(await response.fold(
      (l) => _Error(l),
      (r) async {
        for (var i = 0; i < r.length; i++) {
          final url = await getRandomDogPhoto(r[i].name);
          r[i] = r[i].copyWith(imageUrl: url);
        }
        return _Success(r);
      },
    ));
  }

  Future<String> getRandomDogPhoto(String breed) async {
    final response = await dogRepository.getRandomPhotoByBreed(breed);
    return response.fold(
      (l) => "",
      (r) => r,
    );
  }
}
