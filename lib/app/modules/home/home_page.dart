import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marmita_express/app/modules/home/home_store.dart';
import 'package:marmita_express/app/modules/home/shared/widgets/all_restaurant_widget.dart';
import 'package:marmita_express/app/modules/home/shared/widgets/nearby_restaurants.dart';
import 'package:marmita_express/app/modules/home/shared/widgets/popular_items.dart';
import 'package:marmita_express/app/modules/home/shared/widgets/search_widget.dart';
import 'package:marmita_express/app/shared/widgets/bottom_navigate_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'HomePage'}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  HomeStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigateWidget(),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Column(
            children: [
              Container(
                height: 175,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    )),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 55, bottom: 20, left: 25, right: 28),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Marmita Express',
                              style: GoogleFonts.lobster(
                                  fontSize: 25, color: Colors.white)),
                        ],
                      ),
                    ),
                    SearchWidget()
                  ],
                ),
              ),
              Container(
                height: 8,
              ),
            ],
          ),
          Observer(builder: (_) {
            return Expanded(
              child: ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: [
                  store.client.textSearch != ''
                      ? AllRestaurantWidget()
                      : const Column(
                          children: [
                            PopularItems(),
                            NearbyRestaurants(),
                          ],
                        )
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
