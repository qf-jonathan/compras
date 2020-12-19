import 'package:compras/pages/store_page.dart';
import 'package:compras/stores/cart_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<CartStore>(
          create: (_) => CartStore(),
        ),
      ],
      child: ComprasApp(),
    ),
  );
}

class ComprasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicacion de Compras',
      home: StorePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
