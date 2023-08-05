class CatalogItem {
  static final items = [
    Item(1, "OnePlus 10R", "High Performer", 34000, "Matte Black",
        "https://oasis.opstatics.com/content/dam/oasis/page/pkoc/10r/images-appearance-pop4-1.jpg.webp")
  ];
}

class Item {
  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item(
      this.id, this.name, this.description, this.price, this.color, this.image);
}
