import 'package:marmita_express/app/shared/utils/model/food.dart';

class Restaurant {
  final String? imageUrl;
  final String? name;
  final String? address;
  final int? rating;
  final List<Food>? menu;

  Restaurant({
    this.imageUrl,
    this.name,
    this.address,
    this.rating,
    this.menu,
  });
}
