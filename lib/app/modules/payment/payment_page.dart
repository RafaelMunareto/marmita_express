import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marmita_express/app/modules/payment/payment_store.dart';
import 'package:marmita_express/app/modules/payment/shared/util/alert_dialog.dart';
import 'package:marmita_express/app/modules/payment/shared/util/striped_payment.dart';
import 'package:marmita_express/app/shared/utils/reutilizaveis/animated_button.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class PaymentPage extends StatefulWidget {
  final String amount;
  const PaymentPage({Key? key, required this.amount}) : super(key: key);
  @override
  PaymentPageState createState() => PaymentPageState();
}

class PaymentPageState extends State<PaymentPage> {
  PaymentStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: InkWell(
                  onTap: () {
                    Modular.to.navigate('/cart/');
                    store.client.setPayConfirm(false);
                    store.client.setTurn(true);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  )),
              title: const Text(
                'Voltar',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pagamento',
                    style: GoogleFonts.cabin(fontSize: 26),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(30),
                          padding: const EdgeInsets.all(18),
                          height: 160,
                          width: 260,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 1.5,
                                blurRadius: 3.2,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.blue.shade400,
                                Colors.blueAccent.shade200
                              ],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Text(
                                  'Total da Conta',
                                  style: GoogleFonts.cabin(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Text(
                                '\$${widget.amount}',
                                style: GoogleFonts.cabin(
                                    fontSize: 36,
                                    letterSpacing: 1.5,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              InkWell(
                                onTap: () {
                                  Modular.to.navigate('/cart/');
                                  store.client.setTurn(true);
                                },
                                child: Container(
                                  height: 28,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.white70.withOpacity(0.7),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Olhar Carrinho',
                                      style: GoogleFonts.cabin(
                                          fontSize: 14,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AnimatedToggleButton(
                          isOn: store.client.turn,
                          onToggle: store.togglePaymentMethod,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Observer(builder: (_) {
                    return Column(
                      children: [
                        store.client.turn
                            ? Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25, left: 20, bottom: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Pagamento Carrinho',
                                          style:
                                              GoogleFonts.cabin(fontSize: 18),
                                        )
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                      onTap: () async {
                                        setState(() {
                                          store.client.setPayConfirm(false);
                                        });
                                        await makePayment(
                                          context,
                                          widget.amount,
                                          "Payment Successful!",
                                          "Your payment has been successfully processed.",
                                          AlertType.success,
                                          store.client.payConfirm,
                                          store.databaseHelper,
                                          store.client.carts,
                                          store,
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Container(
                                          height: 38,
                                          width: 230,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.blue,
                                          ),
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Icon(
                                                  Icons.payment_rounded,
                                                  color: Colors.white,
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  'Faça o pagamento',
                                                  style: GoogleFonts.cabin(
                                                      fontSize: 17,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )),
                                ],
                              )
                            : Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25, left: 20, bottom: 25),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Tele Entrega',
                                          style:
                                              GoogleFonts.cabin(fontSize: 18),
                                        )
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      store.client.setPayConfirm(true);
                                    },
                                    child: Container(
                                      height: 38,
                                      width: 250,
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF86DE29),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          store.client.payConfirm
                                              ? const Icon(
                                                  Icons.circle,
                                                  color: Colors.white,
                                                  size: 16,
                                                )
                                              : const Icon(
                                                  Icons.circle_outlined,
                                                  color: Colors.white,
                                                  size: 16,
                                                ),
                                          const SizedBox(
                                            width: 32,
                                          ),
                                          Text(
                                            'Tele entrega',
                                            style: GoogleFonts.cabin(
                                                fontSize: 17,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  store.client.payConfirm
                                      ? Column(
                                          children: [
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Container(
                                              height: 55,
                                              padding: const EdgeInsets.only(
                                                  top: 10, bottom: 10),
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  CustomAlertDialog
                                                      .onAlertWithStyle(
                                                          context,
                                                          "Pedido confirmado!",
                                                          "Seu pedido foi confirmado com sucesso!",
                                                          AlertType.success,
                                                          store.client
                                                              .payConfirm,
                                                          store.databaseHelper,
                                                          store.client.carts,
                                                          store);
                                                },
                                                child: Text(
                                                  'Confirmar pedido',
                                                  style: GoogleFonts.cabin(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                  elevation: 12,
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 40),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      : Container(),
                                ],
                              )
                      ],
                    );
                  })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
