import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:marmita_express/app/modules/home/shared/widgets/rating_stars.dart';
import 'package:marmita_express/app/modules/restaurant/restaurant_store.dart';
import 'package:marmita_express/app/shared/utils/model/food.dart';
import 'package:marmita_express/app/shared/utils/model/order.dart';
import 'package:marmita_express/app/shared/utils/model/restaurant.dart';

class RestaurantPage extends StatefulWidget {
  final Restaurant? restaurant;
  const RestaurantPage({Key? key, this.restaurant}) : super(key: key);
  @override
  RestaurantPageState createState() => RestaurantPageState();
}

class RestaurantPageState extends State<RestaurantPage> {
  RestaurantStore store = Modular.get();

  Widget _buildMenuItem(BuildContext context, Food menuItem, Order order) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          height: 170.0,
          width: 170.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            image: DecorationImage(
              image: AssetImage(menuItem.imageUrl!),
              opacity: 0.88,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 170.0,
          width: 170.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              tileMode: TileMode.mirror,
              stops: const <double>[0.1, 0.5, 0.7, 0.9],
              colors: <Color>[
                Colors.black.withOpacity(0.3),
                Colors.black87.withOpacity(0.3),
                Colors.black54.withOpacity(0.3),
                Colors.black38.withOpacity(0.3),
              ],
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              menuItem.name!,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.2,
              ),
            ),
            Text(
              '\$${menuItem.price}',
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 15.0,
          right: 15.0,
          child: Container(
            height: 36.0,
            width: 36.0,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.35),
                border: Border.all(
                  color: Colors.white,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(40)),
            child: IconButton(
              onPressed: () {
                var now = DateTime.now();
                var formatter = DateFormat('dd-MM-yyyy');
                String formattedDate = formatter.format(now);
                store.insertCart(
                    formattedDate, menuItem, widget.restaurant!.name);
              },
              icon: const Icon(
                Icons.add,
                color: Colors.white,
                size: 16.4,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Hero(
                tag: widget.restaurant!.imageUrl!,
                child: Opacity(
                  opacity: 0.95,
                  child: Image.asset(
                    widget.restaurant!.imageUrl!,
                    height: 200.0,
                    width: size.width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 40.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Modular.to.navigate('/home/');
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 30.0,
                        color: Colors.white,
                      ),
                    ),
                    Observer(builder: (_) {
                      return IconButton(
                        onPressed: () {
                          setState(() {
                            if (store.client.fav == true) {
                              store.client.setFav(false);
                            } else {
                              store.client.setFav(true);
                            }
                          });
                        },
                        icon: store.client.fav
                            ? const Icon(
                                Icons.favorite,
                                size: 30.0,
                                color: Color(0xFF86DE29),
                              )
                            : const Icon(
                                Icons.favorite_border_sharp,
                                size: 30.0,
                                color: Color(0xFF86DE29),
                              ),
                      );
                    }),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      widget.restaurant!.name!,
                      style: const TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4.0),
                RatingStars(widget.restaurant!.rating!),
                const SizedBox(height: 6.0),
                Text(
                  widget.restaurant!.address!,
                  style: const TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                child: const Text('Avaliações'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                    (states) => Theme.of(context).primaryColor,
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 30.0),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Contato'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => const Color(0xFF86DE29)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 30.0),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          const Center(
            child: Text(
              'Menu',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Expanded(
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 11),
              itemCount: widget.restaurant!.menu!.length,
              itemBuilder: (context, index) {
                Food food = widget.restaurant!.menu![index];
                Order order = Order();
                return _buildMenuItem(context, food, order);
              },
            ),
          ),
        ],
      ),
    );
  }
}
