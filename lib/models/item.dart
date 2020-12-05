class Item {
  Item({
    this.name,
  });

  final String name;
}

List<Item> generateItems() {
  return [
    Item(name: 'camisa'),
    Item(name: 'zapato'),
    Item(name: 'pantalon'),
    Item(name: 'corbata'),
    Item(name: 'chalina'),
    Item(name: 'chompa'),
    Item(name: 'gorra'),
    Item(name: 'correa'),
  ];
}
