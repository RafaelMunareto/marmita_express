import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marmita_express/app/shared/utils/repositories/localstorage/local_storage_interface.dart';
import 'package:marmita_express/app/shared/utils/repositories/localstorage/local_storage_share.dart';
import 'package:marmita_express/app/shared/utils/utils/themes/theme.dart';

class AppWidget extends StatefulWidget {
  @override
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
  static _AppWidgetState? of(BuildContext context) =>
      context.findAncestorStateOfType<_AppWidgetState>();
}

class _AppWidgetState extends State<AppWidget> {
  ThemeMode _themeMode = ThemeMode.system;
  final ILocalStorage theme = LocalStorageShare();
  late String darkLight = '';
  bool isDark = false;

  buscaStorage() async {
    await theme.get('theme').then((value) {
      setState(() {
        if (value != null) {
          if (value.isNotEmpty) {
            value?[0] == 'dark'
                ? _themeMode = ThemeMode.dark
                : _themeMode = ThemeMode.light;
          }
        }
      });
    });
  }

  //já crio o inicio das rotas com o Flutter Modular e os temas centralizados
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Marmita Express',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      themeMode: _themeMode,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }

  //troca o tema de toda a aplicação
  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }
}
