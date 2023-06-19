// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_contact_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ClientContactStore on _ClientContactStoreBase, Store {
  late final _$isFormValidAtom =
      Atom(name: '_ClientContactStoreBase.isFormValid', context: context);

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

  late final _$_ClientContactStoreBaseActionController =
      ActionController(name: '_ClientContactStoreBase', context: context);

  @override
  dynamic setIsFormValid(dynamic value) {
    final _$actionInfo = _$_ClientContactStoreBaseActionController.startAction(
        name: '_ClientContactStoreBase.setIsFormValid');
    try {
      return super.setIsFormValid(value);
    } finally {
      _$_ClientContactStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isFormValid: ${isFormValid}
    ''';
  }
}
