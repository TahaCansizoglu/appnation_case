class DogModel {
  final String name;
  final List<String> subBreeds;
  final String? imageUrl;

  DogModel({required this.name, required this.subBreeds, this.imageUrl});

  DogModel copyWith({
    String? name,
    List<String>? subBreeds,
    String? imageUrl,
  }) {
    return DogModel(
      name: name ?? this.name,
      subBreeds: subBreeds ?? this.subBreeds,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }
}
