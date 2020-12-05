import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hola"),
      ),
      body: CartItemList(),
    );
  }
}

class CartItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CartItem(text: Text("item1")),
        CartItem(text: Text("item2")),
        CartItem(text: Text("item3")),
        CartItem(text: Text("item4")),
        CartItem(text: Text("item5")),
        CartItem(text: Text("item1")),
        CartItem(text: Text("item2")),
        CartItem(text: Text("item3")),
        CartItem(text: Text("item4")),
        CartItem(text: Text("item5")),
        CartItem(text: Text("item1")),
        CartItem(text: Text("item2")),
        CartItem(text: Text("item3")),
        CartItem(text: Text("item4")),
        CartItem(text: Text("item5")),
        CartItem(text: Text("item1")),
        CartItem(text: Text("item2")),
        CartItem(text: Text("item3")),
        CartItem(text: Text("item4")),
        CartItem(text: Text("item5")),
        CartItem(text: Text("item1")),
        CartItem(text: Text("item2")),
        CartItem(text: Text("item3")),
        CartItem(text: Text("item4")),
        CartItem(text: Text("item5")),
        CartItem(text: Text("item1")),
        CartItem(text: Text("item2")),
        CartItem(text: Text("item3")),
        CartItem(text: Text("item4")),
        CartItem(text: Text("item5")),
      ],
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
