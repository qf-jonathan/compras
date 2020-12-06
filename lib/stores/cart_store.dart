import 'package:compras/models/item.dart';
import 'package:mobx/mobx.dart';

part 'cart_store.g.dart';

class CartStore = _CartStore with _$CartStore;

abstract class _CartStore with Store {
  ObservableList<Item> cartItems = ObservableList.of([]);

  @computed
  int get totalItems => cartItems.length;

  @action
  void addItem(Item item) {
    cartItems.add(item);
  }

  @action
  void removeItem(int index) {
    cartItems.removeAt(index);
  }
}