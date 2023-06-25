import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marmita_express/app/app_widget.dart';
import 'package:marmita_express/app/shared/store/client_store.dart';
import 'package:marmita_express/app/shared/utils/others/themes/constants.dart';
import 'package:marmita_express/app/shared/utils/repositories/auth/auth_repository_interface.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  ClientStore client = Modular.get();
  IAuthRepository auth = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Drawer(
        elevation: 18,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 90,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    client.theme ? kSecondaryColorBlack : kPrimaryColor,
                    client.theme ? kWhite : kPrimaryColorLight,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: ListTile(
                leading: const Padding(
                  padding: EdgeInsets.only(top: 24.0),
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
                title: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Marmita Express',
                            style: GoogleFonts.lobster(
                                fontSize: 25, color: Colors.white))),
                  ),
                ),
                onTap: () => Modular.to.pop(),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.sunny, color: Colors.amber),
              title: Switch(
                  value: client.theme,
                  onChanged: (state) {
                    setState(() {
                      AppWidget.of(context)!.changeTheme(
                          state ? ThemeMode.dark : ThemeMode.light);
                    });
                    changeSwitch(state);
                  }),
              trailing: const Icon(
                Icons.nightlight_round,
                color: Colors.blueGrey,
              ),
            ),
            const Divider(),
            ListTile(
              onTap: () => {},
              leading: Icon(Icons.people,
                  color: client.theme ? kWhite : kPrimaryColor),
              title: const Text('Perfil'),
              trailing: Icon(Icons.arrow_right,
                  color: client.theme ? kWhite : darkLight),
            ),
            const Divider(),
            ListTile(
              onTap: () => {},
              leading: Icon(Icons.business_sharp,
                  color: client.theme ? kWhite : kPrimaryColor),
              title: const Text('Fornecedor'),
              trailing: Icon(Icons.arrow_right,
                  color: client.theme ? kWhite : darkLight),
            ),
            const Divider(),
          ],
        ),
      );
    });
  }

  changeSwitch(state) async {
    await auth.saveTheme(state);
    client.setTheme(state);
  }
}
