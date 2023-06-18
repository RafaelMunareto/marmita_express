// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_cart_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ClientCartStore on _ClientCartStoreBase, Store {
  late final _$cartsListAtom =
      Atom(name: '_ClientCartStoreBase.cartsList', context: context);

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

  late final _$totalPriceAtom =
      Atom(name: '_ClientCartStoreBase.totalPrice', context: context);

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

  late final _$deliveryTimeAtom =
      Atom(name: '_ClientCartStoreBase.deliveryTime', context: context);

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

  late final _$lenAtom =
      Atom(name: '_ClientCartStoreBase.len', context: context);

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

  late final _$isEmptyAtom =
      Atom(name: '_ClientCartStoreBase.isEmpty', context: context);

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

  late final _$_ClientCartStoreBaseActionController =
      ActionController(name: '_ClientCartStoreBase', context: context);

  @override
  dynamic setCartList(dynamic value) {
    final _$actionInfo = _$_ClientCartStoreBaseActionController.startAction(
        name: '_ClientCartStoreBase.setCartList');
    try {
      return super.setCartList(value);
    } finally {
      _$_ClientCartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTotalPrice(dynamic value) {
    final _$actionInfo = _$_ClientCartStoreBaseActionController.startAction(
        name: '_ClientCartStoreBase.setTotalPrice');
    try {
      return super.setTotalPrice(value);
    } finally {
      _$_ClientCartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDeliveryTime(dynamic value) {
    final _$actionInfo = _$_ClientCartStoreBaseActionController.startAction(
        name: '_ClientCartStoreBase.setDeliveryTime');
    try {
      return super.setDeliveryTime(value);
    } finally {
      _$_ClientCartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLen(dynamic value) {
    final _$actionInfo = _$_ClientCartStoreBaseActionController.startAction(
        name: '_ClientCartStoreBase.setLen');
    try {
      return super.setLen(value);
    } finally {
      _$_ClientCartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setIsEmpty(dynamic value) {
    final _$actionInfo = _$_ClientCartStoreBaseActionController.startAction(
        name: '_ClientCartStoreBase.setIsEmpty');
    try {
      return super.setIsEmpty(value);
    } finally {
      _$_ClientCartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cartsList: ${cartsList},
totalPrice: ${totalPrice},
deliveryTime: ${deliveryTime},
len: ${len},
isEmpty: ${isEmpty}
    ''';
  }
}
