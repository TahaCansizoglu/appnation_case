import 'package:appnation_case/features/splash/domain/models/dog_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dog_dto.freezed.dart';

@Freezed(fromJson: false)
class DogDto with _$DogDto {
  factory DogDto({
    required String name,
    required List<String> subBreeds,
    required String? imageUrl,
  }) = _DogDto;

  DogDto._();

  DogModel toDomain() {
    return DogModel(name: name, subBreeds: subBreeds);
  }
}
