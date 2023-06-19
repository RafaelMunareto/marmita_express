import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:marmita_express/app/modules/payment/payment_store.dart';
import 'package:marmita_express/app/shared/utils/database/db_helper.dart';
import 'package:marmita_express/app/shared/utils/database/db_model.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class CustomAlertDialog {
  static void onAlertWithStyle(
    BuildContext context,
    String title,
    String desc,
    AlertType alertType,
    bool payConfirm,
    DatabaseHelper databaseHelper,
    List<Carts> carts,
    PaymentStore store,
  ) {
    var alertStyle = AlertStyle(
        animationType: AnimationType.fromBottom,
        isCloseButton: false,
        isOverlayTapDismiss: false,
        descStyle: GoogleFonts.cabin(
          fontSize: 16,
        ),
        animationDuration: const Duration(milliseconds: 600),
        alertBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(
            color: Colors.grey,
          ),
        ),
        titleStyle: GoogleFonts.cabin(
            fontSize: 23, color: Colors.green, fontWeight: FontWeight.w600),
        constraints: const BoxConstraints.expand(
          width: 320,
        ),
        overlayColor: const Color(0x55000000),
        alertElevation: 4,
        alertPadding: const EdgeInsets.only(top: 200),
        alertAlignment: Alignment.bottomCenter);

    Alert(
      context: context,
      style: alertStyle,
      type: alertType,
      title: title,
      desc: desc,
      buttons: [
        DialogButton(
          height: 35,
          margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 45),
          onPressed: () {
            Modular.to.navigate('/home');
            store.client.turn = true;
            payConfirm = false;
            for (Carts cart in carts) {
              databaseHelper.delete(cart.id!);
            }
          },
          child: Center(
            child: Text(
              'Retornar para a página principal',
              style: GoogleFonts.cabin(fontSize: 15.5, color: Colors.black),
            ),
          ),
          border: Border.all(
            color: Colors.black,
            width: 2.0,
          ),
          radius: BorderRadius.circular(40),
          color: Colors.transparent,
        ),
      ],
    ).show();
  }
}
