import 'package:appnation_case/core/models/failure/failure.dart';
import 'package:fpdart/fpdart.dart';

import '../models/dog_model.dart';

abstract interface class DogRepository {
  Future<Either<Failure, DogModel>> getRandomDog();
  Future<Either<Failure, String>> getRandomPhotoByBreed(String breed);
  Future<Either<Failure, List<DogModel>>> getAllBreeds();
}
