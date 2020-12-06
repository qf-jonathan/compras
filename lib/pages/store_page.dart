import 'package:compras/models/item.dart';
import 'package:compras/pages/cart_page.dart';
import 'package:compras/stores/cart_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CartStore store = Provider.of<CartStore>(context);

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
                Container(
                  child: Icon(
                    Icons.shop,
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(right: 5.0),
                ),
                Observer(
                  builder: (_) => Text(
                    "${store.totalItems}",
                    style: TextStyle(color: Colors.white),
                  ),
                )
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
  final List<Item> items = generateItems();

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<CartStore>(context);
    final Orientation orientation = MediaQuery.of(context).orientation;

    return GridView.count(
      crossAxisCount: (orientation == Orientation.portrait ? 2 : 3),
      mainAxisSpacing: 6.0,
      crossAxisSpacing: 6.0,
      padding: const EdgeInsets.all(4.0),
      childAspectRatio: (orientation == Orientation.portrait) ? 1.0 : 1.3,
      children: items.map<Widget>((Item item) {
        return StoreItems(
          text: Text(item.name),
          onPressed: () {
            store.addItem(item);
          },
        );
      }).toList(),
    );
  }
}

class StoreItems extends StatelessWidget {
  StoreItems({
    @required this.text,
    @required this.onPressed,
  });

  final Text text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration:
            BoxDecoration(border: Border.all(width: 2.0, color: Colors.black)),
        child: Center(
          child: text,
        ),
      ),
    );
  }
}
