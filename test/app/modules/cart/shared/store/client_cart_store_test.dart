import 'package:flutter_test/flutter_test.dart';
import 'package:marmita_express/app/modules/cart/shared/store/client_cart_store.dart';
 
void main() {
  late ClientCartStore store;

  setUpAll(() {
    store = ClientCartStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}