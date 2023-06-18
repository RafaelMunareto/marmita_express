import 'package:marmita_express/app/shared/utils/model/food.dart';
import 'package:marmita_express/app/shared/utils/model/restaurant.dart';

class Order {
  final Restaurant? restaurant;
  final Food? food;
  final String? date;
  late final int? quantity;

  Order({
    this.date,
    this.restaurant,
    this.food,
    this.quantity,
  });
}
