// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_cart_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ShoppingCartController = BindInject(
  (i) => ShoppingCartController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ShoppingCartController on _ShoppingCartControllerBase, Store {
  final _$valueAtom = Atom(name: '_ShoppingCartControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_ShoppingCartControllerBaseActionController =
      ActionController(name: '_ShoppingCartControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_ShoppingCartControllerBaseActionController
        .startAction(name: '_ShoppingCartControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_ShoppingCartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}