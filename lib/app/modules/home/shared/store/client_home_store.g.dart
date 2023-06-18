// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ClientHomeStore on _ClientHomeStoreBase, Store {
  late final _$lenAtom =
      Atom(name: '_ClientHomeStoreBase.len', context: context);

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
      Atom(name: '_ClientHomeStoreBase.totalPrice', context: context);

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
      Atom(name: '_ClientHomeStoreBase.cartsList', context: context);

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

  late final _$_ClientHomeStoreBaseActionController =
      ActionController(name: '_ClientHomeStoreBase', context: context);

  @override
  dynamic setLen(dynamic value) {
    final _$actionInfo = _$_ClientHomeStoreBaseActionController.startAction(
        name: '_ClientHomeStoreBase.setLen');
    try {
      return super.setLen(value);
    } finally {
      _$_ClientHomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTotalPrice(dynamic value) {
    final _$actionInfo = _$_ClientHomeStoreBaseActionController.startAction(
        name: '_ClientHomeStoreBase.setTotalPrice');
    try {
      return super.setTotalPrice(value);
    } finally {
      _$_ClientHomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCartList(dynamic value) {
    final _$actionInfo = _$_ClientHomeStoreBaseActionController.startAction(
        name: '_ClientHomeStoreBase.setCartList');
    try {
      return super.setCartList(value);
    } finally {
      _$_ClientHomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
len: ${len},
totalPrice: ${totalPrice},
cartsList: ${cartsList}
    ''';
  }
}
