import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marmita_express/app/app_widget.dart';
import 'package:marmita_express/app/shared/utils/repositories/localstorage/local_storage_interface.dart';
import 'package:marmita_express/app/shared/utils/repositories/localstorage/local_storage_share.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key? key, this.title = 'SplashPage'}) : super(key: key);
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  ILocalStorage storage = LocalStorageShare();
  bool lightMode = false;

  @override
  void initState() {
    storage.get('theme').then((value) {
      if (value != null) {
        lightMode = value;
        WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
              AppWidget.of(context)
                  ?.changeTheme(value ? ThemeMode.dark : ThemeMode.light);
            }));
      }
    }).whenComplete(() async {
      await Future.delayed(
          const Duration(seconds: 2), () => Modular.to.navigate('/home/'));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Container(
            height: 220,
            width: 220,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 80,
                        width: 80,
                        child: Image(
                            image:
                                AssetImage('assets/images/burger_icon.png'))),
                    SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                        height: 80,
                        width: 80,
                        child: Image(
                            image: AssetImage('assets/images/pizza_icon.png'))),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Marmita Express',
                  style: GoogleFonts.lobster(fontSize: 24, color: Colors.white),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
