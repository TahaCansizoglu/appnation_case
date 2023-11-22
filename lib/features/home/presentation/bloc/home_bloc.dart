import 'package:appnation_case/features/splash/domain/models/dog_model.dart';
import 'package:appnation_case/features/splash/domain/repository/dog_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final DogRepository dogRepository;
  HomeBloc({
    List<DogModel>? dogList,
    required this.dogRepository,
  }) : super(
          _Initial(dogList: dogList ?? []),
        ) {
    on<HomeEvent>((event, emit) {
      event.whenOrNull(
        started: () {
          emit(_Initial(dogList: dogList ?? []));
        },
        searchInDogList: (query) {
          if (query.isEmpty) {
            add(const HomeEvent.started());
            return;
          }
          final List<DogModel> filteredDogList =
              state.dogList.where((element) => element.name.toLowerCase().contains(query.toLowerCase())).toList();
          emit(_Searched(dogList: filteredDogList));
        },
      );
    });
    on<_GenerateRandomDog>((event, emit) => event.whenOrNull(
          generateRandomDog: () async {
            await generateRandomDog(emit);
            return null;
          },
        ));
  }

  Future<void> generateRandomDog(Emitter<HomeState> emit) async {
    final response = await dogRepository.getRandomPhotoByBreed(state.dogList[0].name);

    emit(response.fold(
      (l) => state,
      (r) => _Generated(dogList: state.dogList, url: r),
    ));
  }

  void searchInDogList(String query) => add(HomeEvent.searchInDogList(query));

  void generateRandomDogEvent() => add(const HomeEvent.generateRandomDog());
}
