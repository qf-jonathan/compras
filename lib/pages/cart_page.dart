import 'package:compras/models/item.dart';
import 'package:compras/stores/cart_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CartPage extends StatelessWidget {
  CartPage({
    @required this.store,
  });

  final CartStore store;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hola"),
      ),
      body: CartItemList(store: store),
    );
  }
}

class CartItemList extends StatelessWidget {
  CartItemList({
    @required this.store,
  });

  final CartStore store;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => ListView(
        children: store.cartItems.map<Widget>((Item item) {
          return CartItem(
            text: Text(item.name),
          );
        }).toList(),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  CartItem({
    @required this.text,
  });

  final Text text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5.0),
      margin: EdgeInsets.only(left: 5.0, top: 5.0, right: 5.0),
      child: Padding(
        child: text,
        padding: EdgeInsets.all(15.0),
      ),
      color: Color.fromRGBO(0, 0, 0, 0.1),
    );
  }
}
