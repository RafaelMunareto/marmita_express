// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_payment_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ClientPaymentStore on _ClientPaymentStoreBase, Store {
  late final _$paymentIntentDataAtom =
      Atom(name: '_ClientPaymentStoreBase.paymentIntentData', context: context);

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
      Atom(name: '_ClientPaymentStoreBase.payConfirm', context: context);

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

  late final _$cartsListAtom =
      Atom(name: '_ClientPaymentStoreBase.cartsList', context: context);

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

  late final _$cartsAtom =
      Atom(name: '_ClientPaymentStoreBase.carts', context: context);

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

  late final _$lenAtom =
      Atom(name: '_ClientPaymentStoreBase.len', context: context);

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

  late final _$turnAtom =
      Atom(name: '_ClientPaymentStoreBase.turn', context: context);

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

  late final _$_ClientPaymentStoreBaseActionController =
      ActionController(name: '_ClientPaymentStoreBase', context: context);

  @override
  dynamic setPaymentIntentDate(dynamic value) {
    final _$actionInfo = _$_ClientPaymentStoreBaseActionController.startAction(
        name: '_ClientPaymentStoreBase.setPaymentIntentDate');
    try {
      return super.setPaymentIntentDate(value);
    } finally {
      _$_ClientPaymentStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPayConfirm(dynamic value) {
    final _$actionInfo = _$_ClientPaymentStoreBaseActionController.startAction(
        name: '_ClientPaymentStoreBase.setPayConfirm');
    try {
      return super.setPayConfirm(value);
    } finally {
      _$_ClientPaymentStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCartList(dynamic value) {
    final _$actionInfo = _$_ClientPaymentStoreBaseActionController.startAction(
        name: '_ClientPaymentStoreBase.setCartList');
    try {
      return super.setCartList(value);
    } finally {
      _$_ClientPaymentStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCarts(dynamic value) {
    final _$actionInfo = _$_ClientPaymentStoreBaseActionController.startAction(
        name: '_ClientPaymentStoreBase.setCarts');
    try {
      return super.setCarts(value);
    } finally {
      _$_ClientPaymentStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLen(dynamic value) {
    final _$actionInfo = _$_ClientPaymentStoreBaseActionController.startAction(
        name: '_ClientPaymentStoreBase.setLen');
    try {
      return super.setLen(value);
    } finally {
      _$_ClientPaymentStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTurn(dynamic value) {
    final _$actionInfo = _$_ClientPaymentStoreBaseActionController.startAction(
        name: '_ClientPaymentStoreBase.setTurn');
    try {
      return super.setTurn(value);
    } finally {
      _$_ClientPaymentStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
paymentIntentData: ${paymentIntentData},
payConfirm: ${payConfirm},
cartsList: ${cartsList},
carts: ${carts},
len: ${len},
turn: ${turn}
    ''';
  }
}
