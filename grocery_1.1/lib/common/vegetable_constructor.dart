
class Vegetable {
  final String name;
  final String imageUrl;
  final String description;
  final double price;
  final double rating;
  final int reviews;
  final int calories;
  final String expiration;
  final bool organic;
  final String weight;

  Vegetable({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.price,
    required this.rating,
    required this.reviews,
    required this.calories,
    required this.expiration,
    required this.organic,
    this.weight = '1 kg',
  });
}