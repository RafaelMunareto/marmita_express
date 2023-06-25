// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ClientStore on _ClientStoreBase, Store {
  late final _$lenAtom = Atom(name: '_ClientStoreBase.len', context: context);

  @override
  int get len {
    _$lenAtom.reportRead();
    return super.len;
  }

  @override
  set len(int value) {
    _$lenAtom.reportWrite(value, super.len, () {
      super.len = value;
    });
  }

  late final _$totalPriceAtom =
      Atom(name: '_ClientStoreBase.totalPrice', context: context);

  @override
  double get totalPrice {
    _$totalPriceAtom.reportRead();
    return super.totalPrice;
  }

  @override
  set totalPrice(double value) {
    _$totalPriceAtom.reportWrite(value, super.totalPrice, () {
      super.totalPrice = value;
    });
  }

  late final _$cartsListAtom =
      Atom(name: '_ClientStoreBase.cartsList', context: context);

  @override
  List<Carts> get cartsList {
    _$cartsListAtom.reportRead();
    return super.cartsList;
  }

  @override
  set cartsList(List<Carts> value) {
    _$cartsListAtom.reportWrite(value, super.cartsList, () {
      super.cartsList = value;
    });
  }

  late final _$filteredCartsAtom =
      Atom(name: '_ClientStoreBase.filteredCarts', context: context);

  @override
  List<Carts> get filteredCarts {
    _$filteredCartsAtom.reportRead();
    return super.filteredCarts;
  }

  @override
  set filteredCarts(List<Carts> value) {
    _$filteredCartsAtom.reportWrite(value, super.filteredCarts, () {
      super.filteredCarts = value;
    });
  }

  late final _$filteredRestaurantsAtom =
      Atom(name: '_ClientStoreBase.filteredRestaurants', context: context);

  @override
  List<Restaurant> get filteredRestaurants {
    _$filteredRestaurantsAtom.reportRead();
    return super.filteredRestaurants;
  }

  @override
  set filteredRestaurants(List<Restaurant> value) {
    _$filteredRestaurantsAtom.reportWrite(value, super.filteredRestaurants, () {
      super.filteredRestaurants = value;
    });
  }

  late final _$textSearchAtom =
      Atom(name: '_ClientStoreBase.textSearch', context: context);

  @override
  String get textSearch {
    _$textSearchAtom.reportRead();
    return super.textSearch;
  }

  @override
  set textSearch(String value) {
    _$textSearchAtom.reportWrite(value, super.textSearch, () {
      super.textSearch = value;
    });
  }

  late final _$bottomNavigateIndexAtom =
      Atom(name: '_ClientStoreBase.bottomNavigateIndex', context: context);

  @override
  int get bottomNavigateIndex {
    _$bottomNavigateIndexAtom.reportRead();
    return super.bottomNavigateIndex;
  }

  @override
  set bottomNavigateIndex(int value) {
    _$bottomNavigateIndexAtom.reportWrite(value, super.bottomNavigateIndex, () {
      super.bottomNavigateIndex = value;
    });
  }

  late final _$isFormValidAtom =
      Atom(name: '_ClientStoreBase.isFormValid', context: context);

  @override
  bool get isFormValid {
    _$isFormValidAtom.reportRead();
    return super.isFormValid;
  }

  @override
  set isFormValid(bool value) {
    _$isFormValidAtom.reportWrite(value, super.isFormValid, () {
      super.isFormValid = value;
    });
  }

  late final _$deliveryTimeAtom =
      Atom(name: '_ClientStoreBase.deliveryTime', context: context);

  @override
  int get deliveryTime {
    _$deliveryTimeAtom.reportRead();
    return super.deliveryTime;
  }

  @override
  set deliveryTime(int value) {
    _$deliveryTimeAtom.reportWrite(value, super.deliveryTime, () {
      super.deliveryTime = value;
    });
  }

  late final _$isEmptyAtom =
      Atom(name: '_ClientStoreBase.isEmpty', context: context);

  @override
  bool get isEmpty {
    _$isEmptyAtom.reportRead();
    return super.isEmpty;
  }

  @override
  set isEmpty(bool value) {
    _$isEmptyAtom.reportWrite(value, super.isEmpty, () {
      super.isEmpty = value;
    });
  }

  late final _$paymentIntentDataAtom =
      Atom(name: '_ClientStoreBase.paymentIntentData', context: context);

  @override
  Map<String, dynamic>? get paymentIntentData {
    _$paymentIntentDataAtom.reportRead();
    return super.paymentIntentData;
  }

  @override
  set paymentIntentData(Map<String, dynamic>? value) {
    _$paymentIntentDataAtom.reportWrite(value, super.paymentIntentData, () {
      super.paymentIntentData = value;
    });
  }

  late final _$payConfirmAtom =
      Atom(name: '_ClientStoreBase.payConfirm', context: context);

  @override
  bool get payConfirm {
    _$payConfirmAtom.reportRead();
    return super.payConfirm;
  }

  @override
  set payConfirm(bool value) {
    _$payConfirmAtom.reportWrite(value, super.payConfirm, () {
      super.payConfirm = value;
    });
  }

  late final _$cartsAtom =
      Atom(name: '_ClientStoreBase.carts', context: context);

  @override
  List<Carts> get carts {
    _$cartsAtom.reportRead();
    return super.carts;
  }

  @override
  set carts(List<Carts> value) {
    _$cartsAtom.reportWrite(value, super.carts, () {
      super.carts = value;
    });
  }

  late final _$turnAtom = Atom(name: '_ClientStoreBase.turn', context: context);

  @override
  bool get turn {
    _$turnAtom.reportRead();
    return super.turn;
  }

  @override
  set turn(bool value) {
    _$turnAtom.reportWrite(value, super.turn, () {
      super.turn = value;
    });
  }

  late final _$favAtom = Atom(name: '_ClientStoreBase.fav', context: context);

  @override
  bool get fav {
    _$favAtom.reportRead();
    return super.fav;
  }

  @override
  set fav(bool value) {
    _$favAtom.reportWrite(value, super.fav, () {
      super.fav = value;
    });
  }

  late final _$qAtom = Atom(name: '_ClientStoreBase.q', context: context);

  @override
  int get q {
    _$qAtom.reportRead();
    return super.q;
  }

  @override
  set q(int value) {
    _$qAtom.reportWrite(value, super.q, () {
      super.q = value;
    });
  }

  late final _$_ClientStoreBaseActionController =
      ActionController(name: '_ClientStoreBase', context: context);

  @override
  dynamic setLen(dynamic value) {
    final _$actionInfo = _$_ClientStoreBaseActionController.startAction(
        name: '_ClientStoreBase.setLen');
    try {
      return super.setLen(value);
    } finally {
      _$_ClientStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTotalPrice(dynamic value) {
    final _$actionInfo = _$_ClientStoreBaseActionController.startAction(
        name: '_ClientStoreBase.setTotalPrice');
    try {
      return super.setTotalPrice(value);
    } finally {
      _$_ClientStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCartList(dynamic value) {
    final _$actionInfo = _$_ClientStoreBaseActionController.startAction(
        name: '_ClientStoreBase.setCartList');
    try {
      return super.setCartList(value);
    } finally {
      _$_ClientStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setFilteredCarts(dynamic value) {
    final _$actionInfo = _$_ClientStoreBaseActionController.startAction(
        name: '_ClientStoreBase.setFilteredCarts');
    try {
      return super.setFilteredCarts(value);
    } finally {
      _$_ClientStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setFilteredRestaurants(dynamic value) {
    final _$actionInfo = _$_ClientStoreBaseActionController.startAction(
        name: '_ClientStoreBase.setFilteredRestaurants');
    try {
      return super.setFilteredRestaurants(value);
    } finally {
      _$_ClientStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTextSearch(dynamic value) {
    final _$actionInfo = _$_ClientStoreBaseActionController.startAction(
        name: '_ClientStoreBase.setTextSearch');
    try {
      return super.setTextSearch(value);
    } finally {
      _$_ClientStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setBottomNavigateIndex(dynamic value) {
    final _$actionInfo = _$_ClientStoreBaseActionController.startAction(
        name: '_ClientStoreBase.setBottomNavigateIndex');
    try {
      return super.setBottomNavigateIndex(value);
    } finally {
      _$_ClientStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setIsFormValid(dynamic value) {
    final _$actionInfo = _$_ClientStoreBaseActionController.startAction(
        name: '_ClientStoreBase.setIsFormValid');
    try {
      return super.setIsFormValid(value);
    } finally {
      _$_ClientStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDeliveryTime(dynamic value) {
    final _$actionInfo = _$_ClientStoreBaseActionController.startAction(
        name: '_ClientStoreBase.setDeliveryTime');
    try {
      return super.setDeliveryTime(value);
    } finally {
      _$_ClientStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setIsEmpty(dynamic value) {
    final _$actionInfo = _$_ClientStoreBaseActionController.startAction(
        name: '_ClientStoreBase.setIsEmpty');
    try {
      return super.setIsEmpty(value);
    } finally {
      _$_ClientStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPaymentIntentDate(dynamic value) {
    final _$actionInfo = _$_ClientStoreBaseActionController.startAction(
        name: '_ClientStoreBase.setPaymentIntentDate');
    try {
      return super.setPaymentIntentDate(value);
    } finally {
      _$_ClientStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPayConfirm(dynamic value) {
    final _$actionInfo = _$_ClientStoreBaseActionController.startAction(
        name: '_ClientStoreBase.setPayConfirm');
    try {
      return super.setPayConfirm(value);
    } finally {
      _$_ClientStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCarts(dynamic value) {
    final _$actionInfo = _$_ClientStoreBaseActionController.startAction(
        name: '_ClientStoreBase.setCarts');
    try {
      return super.setCarts(value);
    } finally {
      _$_ClientStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTurn(dynamic value) {
    final _$actionInfo = _$_ClientStoreBaseActionController.startAction(
        name: '_ClientStoreBase.setTurn');
    try {
      return super.setTurn(value);
    } finally {
      _$_ClientStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setFav(dynamic value) {
    final _$actionInfo = _$_ClientStoreBaseActionController.startAction(
        name: '_ClientStoreBase.setFav');
    try {
      return super.setFav(value);
    } finally {
      _$_ClientStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
len: ${len},
totalPrice: ${totalPrice},
cartsList: ${cartsList},
filteredCarts: ${filteredCarts},
filteredRestaurants: ${filteredRestaurants},
textSearch: ${textSearch},
bottomNavigateIndex: ${bottomNavigateIndex},
isFormValid: ${isFormValid},
deliveryTime: ${deliveryTime},
isEmpty: ${isEmpty},
paymentIntentData: ${paymentIntentData},
payConfirm: ${payConfirm},
carts: ${carts},
turn: ${turn},
fav: ${fav},
q: ${q}
    ''';
  }
}
