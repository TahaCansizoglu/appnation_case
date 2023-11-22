abstract final class Endpoints {
  static const String baseUrl = 'https://dog.ceo/api';
  static const String randomDog = '$baseUrl/breeds/image/random';
  static String randomDogByBreed(String breed) => '$baseUrl/breed/$breed/images/random';
  static const String allBreeds = '$baseUrl/breeds/list/all';
}
