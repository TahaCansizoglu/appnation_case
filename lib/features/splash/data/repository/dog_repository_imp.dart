import 'package:appnation_case/constants/endpoints.dart';
import 'package:appnation_case/core/models/failure/failure.dart';
import 'package:appnation_case/features/splash/domain/models/dog_model.dart';
import 'package:appnation_case/services/network_service/network_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../constants/failure_messages.dart';
import '../../domain/repository/dog_repository.dart';

@LazySingleton(as: DogRepository)
final class DogRepositoryImp implements DogRepository {
  final NetworkService networkService;

  DogRepositoryImp({required this.networkService});

  @override
  Future<Either<Failure, List<DogModel>>> getAllBreeds() async {
    final response = await networkService.get(Endpoints.allBreeds);
    return response.fold(
        left,
        (r) => optionOf(r.data).fold(
            () => left(const Failure.unknownError(unknownErrorMessage)),
            (data) => data.extractMap("message").fold(
                  () => left(const Failure.unknownError(unknownErrorMessage)),
                  (map) => right(map.keys
                      .map((e) => DogModel(
                            name: e,
                            subBreeds: data[e] ?? [],
                          ))
                      .toList()),
                )));
  }

  @override
  Future<Either<Failure, DogModel>> getRandomDog() {
    // TODO: implement getRandomDog
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> getRandomPhotoByBreed(String breed) async {
    final response = await networkService.get(Endpoints.randomDogByBreed(breed));
    return response.fold(
        left,
        (r) => optionOf(r.data).fold(
            () => left(const Failure.unknownError(unknownErrorMessage)),
            (data) => optionOf(data.extract("message")).fold(
                () => left(const Failure.unknownError(unknownErrorMessage)),
                (photo) => optionOf(photo).fold(
                    () => left(const Failure.unknownError(unknownErrorMessage)), (url) => right((url.toNullable()))))));
  }
}
