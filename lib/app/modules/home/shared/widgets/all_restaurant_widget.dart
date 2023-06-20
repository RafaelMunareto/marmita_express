import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marmita_express/app/modules/home/home_store.dart';
import 'package:marmita_express/app/modules/home/shared/widgets/rating_stars.dart';

class AllRestaurantWidget extends StatelessWidget {
  final String title;
  final HomeStore store = Modular.get();
  AllRestaurantWidget({Key? key, this.title = "AllRestaurantWidget"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: store.client.filteredRestaurants.map((thisRestaurant) {
        return GestureDetector(
          onTap: () {
            Modular.to.navigate('/restaurant/', arguments: thisRestaurant);
          },
          child: Container(
            height: 90,
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3.0,
                  blurRadius: 6.0,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Hero(
                    tag: thisRestaurant.imageUrl!,
                    child: Image.asset(
                      thisRestaurant.imageUrl!,
                      height: 100.0,
                      width: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          thisRestaurant.name!,
                          style: const TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        RatingStars(thisRestaurant.rating!),
                        const SizedBox(height: 12.0),
                        Text(
                          thisRestaurant.address!,
                          style: const TextStyle(
                            fontSize: 11.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
