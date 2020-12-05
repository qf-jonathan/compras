import 'package:compras/pages/cart_page.dart';
import 'package:flutter/material.dart';

class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplicación de Compras"),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage()),
              );
            },
            child: Row(
              children: <Widget>[
                Icon(Icons.shop, color: Colors.white,),
                Text("99", style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
        ],
      ),
      body: StoreList(),
    );
  }
}

class StoreList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery
        .of(context)
        .orientation;
    return GridView.count(
      crossAxisCount: (orientation == Orientation.portrait ? 2 : 3),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      padding: const EdgeInsets.all(4.0),
      childAspectRatio: (orientation == Orientation.portrait) ? 1.0 : 1.3,
      children: <Widget>[
        StoreItems(
          text: Text("hola mundo"),
          color: Colors.red,
          onPressed: () {
            print("hola");
          },
        ),
        StoreItems(
          text: Text("hola mundo"),
          color: Colors.green,
          onPressed: () {
            print("hola2");
          },
        ),
        StoreItems(
          text: Text("hola mundo"),
          color: Colors.blue,
        ),
        StoreItems(
          text: Text("hola mundo"),
          color: Colors.yellow,
        ),
        StoreItems(
          text: Text("hola mundo"),
          color: Colors.amber,
        ),
        StoreItems(
          text: Text("hola mundo"),
          color: Colors.cyan,
        ),
        StoreItems(
          text: Text("hola mundo"),
          color: Colors.lime,
        ),
        StoreItems(
          text: Text("hola mundo"),
          color: Colors.purple,
        ),
        StoreItems(
          text: Text("hola mundo"),
          color: Colors.amberAccent,
        ),
        StoreItems(
          text: Text("hola mundo"),
          color: Colors.teal,
        ),
      ],
    );
  }
}

class StoreItems extends StatelessWidget {
  StoreItems({
    @required this.text,
    @required this.color,
    @required this.onPressed,
  });

  final Text text;
  final Color color;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: text,
        ),
        color: color,
      ),
    );
  }
}
