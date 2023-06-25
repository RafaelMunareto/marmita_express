import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marmita_express/app/modules/cart/cart_store.dart';
import 'package:marmita_express/app/shared/utils/database/db_model.dart';
import 'package:marmita_express/app/shared/utils/others/snackbar.dart';
import 'package:marmita_express/app/shared/widgets/bottom_navigate_widget.dart';
import 'package:marmita_express/app/shared/widgets/drawer_widget.dart';

class CartPage extends StatefulWidget {
  final String title;
  const CartPage({Key? key, this.title = 'CartPage'}) : super(key: key);
  @override
  CartPageState createState() => CartPageState();
}

class CartPageState extends State<CartPage> {
  CartStore store = Modular.get();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigateWidget(
        scaffoldKey: _scaffoldKey,
      ),
      key: _scaffoldKey,
      drawer: const DrawerWidget(),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: InkWell(
                  onTap: () {
                    Modular.to.navigate('/home/');
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                  )),
              title: const Text(
                'Voltar',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 25, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Carrinho',
                    style: GoogleFonts.cabin(fontSize: 26),
                  )
                ],
              ),
            ),
            Expanded(
              child: Observer(builder: (_) {
                return store.client.cartsList.isEmpty
                    ? const CircleAvatar(
                        radius: 35,
                        child: Icon(Icons.fastfood),
                      )
                    : ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: store.client.cartsList.length,
                        itemBuilder: (context, index) {
                          Carts order = store.client.cartsList[index];

                          return Container(
                            height: 100,
                            margin: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 108.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0),
                                    image: DecorationImage(
                                      image: AssetImage(store
                                          .client.cartsList[index].imageURL),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        order.food,
                                        style: const TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        order.restaurant,
                                        style: const TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      const SizedBox(height: 10.0),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                if (order.quantity > 1) {
                                                  order.quantity -= 1;
                                                }
                                                store.update(order);
                                              });
                                            },
                                            child: Container(
                                              width: 25.0,
                                              height: 25.0,
                                              decoration: BoxDecoration(
                                                color: Colors.grey[300],
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: const Icon(
                                                Icons.remove,
                                                size: 18.0,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 12.0),
                                            child: Text(
                                              order.quantity.toString(),
                                              style: const TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                order.quantity += 1;

                                                if (kDebugMode) {
                                                  print(store.client.totalPrice
                                                      .toString());
                                                }
                                                store.update(order);
                                              });
                                            },
                                            child: Container(
                                              width: 25.0,
                                              height: 25.0,
                                              decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: const Icon(
                                                Icons.add,
                                                size: 18.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            store.delete(order.id!.toInt());
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.cancel,
                                          color: Colors.red,
                                          size: 24,
                                        )),
                                    const SizedBox(
                                      height: 22,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 15,
                                      ),
                                      child: Text(
                                        'R\$ ${order.price}',
                                        style: const TextStyle(
                                          fontSize: 15.5,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      );
              }),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.95),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                  padding: const EdgeInsets.only(
                    top: 25,
                    left: 16,
                    right: 16,
                  ),
                  child: Observer(builder: (_) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Tempo de Entrega:',
                              style: GoogleFonts.cabin(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              store.client.deliveryTime.toString() + ' min',
                              style: GoogleFonts.cabin(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Custo Total:',
                              style: GoogleFonts.cabin(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'R\$ ${store.client.totalPrice.toStringAsFixed(2)}',
                              style: GoogleFonts.cabin(
                                  fontSize: 17,
                                  color: Colors.green.shade700,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        Observer(builder: (_) {
                          return Container(
                              height: 50,
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              child: Observer(builder: (_) {
                                return ElevatedButton(
                                  onPressed: () {
                                    if (!store.client.isEmpty) {
                                      Modular.to.navigate('/contact/',
                                          arguments: (store.client.totalPrice)
                                              .toString());
                                    } else {
                                      Snackbar.showSnackBar(
                                          context, 'Carrinho está vazio.');
                                    }
                                  },
                                  child: Text(
                                    'Pagamento',
                                    style: GoogleFonts.cabin(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 12,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 70),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                );
                              }));
                        })
                      ],
                    );
                  })),
            ),
          ],
        ),
      ),
    );
  }
}
