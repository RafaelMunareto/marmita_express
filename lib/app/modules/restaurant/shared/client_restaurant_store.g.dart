// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_restaurant_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ClientRestaurantStore on _ClientRestaurantStoreBase, Store {
  late final _$cartsListAtom =
      Atom(name: '_ClientRestaurantStoreBase.cartsList', context: context);

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

  late final _$lenAtom =
      Atom(name: '_ClientRestaurantStoreBase.len', context: context);

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

  late final _$favAtom =
      Atom(name: '_ClientRestaurantStoreBase.fav', context: context);

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

  late final _$cartsAtom =
      Atom(name: '_ClientRestaurantStoreBase.carts', context: context);

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

  late final _$qAtom =
      Atom(name: '_ClientRestaurantStoreBase.q', context: context);

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

  late final _$_ClientRestaurantStoreBaseActionController =
      ActionController(name: '_ClientRestaurantStoreBase', context: context);

  @override
  dynamic setCartList(dynamic value) {
    final _$actionInfo = _$_ClientRestaurantStoreBaseActionController
        .startAction(name: '_ClientRestaurantStoreBase.setCartList');
    try {
      return super.setCartList(value);
    } finally {
      _$_ClientRestaurantStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLen(dynamic value) {
    final _$actionInfo = _$_ClientRestaurantStoreBaseActionController
        .startAction(name: '_ClientRestaurantStoreBase.setLen');
    try {
      return super.setLen(value);
    } finally {
      _$_ClientRestaurantStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setFav(dynamic value) {
    final _$actionInfo = _$_ClientRestaurantStoreBaseActionController
        .startAction(name: '_ClientRestaurantStoreBase.setFav');
    try {
      return super.setFav(value);
    } finally {
      _$_ClientRestaurantStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCarts(dynamic value) {
    final _$actionInfo = _$_ClientRestaurantStoreBaseActionController
        .startAction(name: '_ClientRestaurantStoreBase.setCarts');
    try {
      return super.setCarts(value);
    } finally {
      _$_ClientRestaurantStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cartsList: ${cartsList},
len: ${len},
fav: ${fav},
carts: ${carts},
q: ${q}
    ''';
  }
}
