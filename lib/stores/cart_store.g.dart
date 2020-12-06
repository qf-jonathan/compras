// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartStore on _CartStore, Store {
  Computed<int> _$totalItemsComputed;

  @override
  int get totalItems => (_$totalItemsComputed ??=
          Computed<int>(() => super.totalItems, name: '_CartStore.totalItems'))
      .value;

  final _$_CartStoreActionController = ActionController(name: '_CartStore');

  @override
  void addItem(Item item) {
    final _$actionInfo =
        _$_CartStoreActionController.startAction(name: '_CartStore.addItem');
    try {
      return super.addItem(item);
    } finally {
      _$_CartStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeItem(int index) {
    final _$actionInfo =
        _$_CartStoreActionController.startAction(name: '_CartStore.removeItem');
    try {
      return super.removeItem(index);
    } finally {
      _$_CartStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
totalItems: ${totalItems}
    ''';
  }
}
