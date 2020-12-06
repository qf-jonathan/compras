import 'package:compras/models/item.dart';
import 'package:compras/stores/cart_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:compras/utils/map_indexed.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Productos"),
      ),
      body: CartItemList(),
    );
  }
}

class CartItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<CartStore>(context);

    return Observer(
      builder: (_) => ListView(
        children: store.cartItems.mapIndexed<Widget>((Item item, int index) {
          return GestureDetector(
            onLongPress: () {
              store.removeItem(index);
            },
            child: CartItem(
              text: Text(item.name),
            ),
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
