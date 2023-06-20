// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marmita_express/app/modules/home/home_store.dart';

class SearchWidget extends StatelessWidget {
  final String title;
  HomeStore store = Modular.get();
  SearchWidget({Key? key, this.title = "SearchWidget"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 25,
      ),
      child: SizedBox(
        height: 38,
        child: TextFormField(
          controller: store.searchController,
          style: const TextStyle(color: Colors.white, fontSize: 14),
          onChanged: (value) => store.filterRestaurants(),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
            fillColor: const Color(0xFF3B3A3A),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(width: 0.8),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                width: 0.8,
                color: Theme.of(context).primaryColor,
              ),
            ),
            suffixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
              size: 22,
            ),
            hintText: 'Procure restaurantes',
            hintStyle: GoogleFonts.cabin(
              fontSize: 14.5,
              color: Colors.white.withOpacity(.5),
            ),
          ),
        ),
      ),
    );
  }
}
