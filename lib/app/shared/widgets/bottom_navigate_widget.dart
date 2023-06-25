import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marmita_express/app/shared/store/client_store.dart';

class BottomNavigateWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const BottomNavigateWidget({Key? key, required this.scaffoldKey})
      : super(key: key);

  @override
  State<BottomNavigateWidget> createState() => _BottomNavigateWidgetState();
}

class _BottomNavigateWidgetState extends State<BottomNavigateWidget> {
  ClientStore client = Modular.get();

  void _onItemTapped(int index) async {
    if (index != 3) {
      await client.setBottomNavigateIndex(index);
    }
    switch (index) {
      case 0:
        Modular.to.navigate('/home/');
        break;
      case 1:
        Modular.to.navigate('/contact/', arguments: '');
        break;
      case 2:
        Modular.to.navigate('/cart/');
        break;
      case 3:
        widget.scaffoldKey.currentState?.openDrawer();
        break;
      default:
        Modular.to.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return SizedBox(
        child: BottomNavigationBar(
          useLegacyColorScheme: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.house,
                color:
                    client.bottomNavigateIndex == 0 ? Colors.blue : Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 40,
                child: Icon(Icons.people_alt,
                    color: client.bottomNavigateIndex == 1
                        ? Colors.blue
                        : Colors.grey),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 40,
                child: Row(
                  children: [
                    Icon(Icons.shopping_cart,
                        color: client.bottomNavigateIndex == 2
                            ? Colors.blue
                            : Colors.grey),
                    client.len != 0
                        ? Badge(
                            backgroundColor: Colors.green,
                            label: Text(client.len.toString()),
                          )
                        : Container()
                  ],
                ),
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
              ),
              label: '',
            ),
          ],
          currentIndex: client.bottomNavigateIndex,
          onTap: (value) => _onItemTapped(value),
        ),
      );
    });
  }
}
