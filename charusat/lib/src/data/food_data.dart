class Foods{
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double ratings;

  Foods({this.id,this.name,this.imagePath,this.category,this.price,this.discount,this.ratings});

}

final foods = [
  Foods(
    id: "1",
    name: "Hot Coffee",
    imagePath: "assets/images/images/breakfast.jpeg",
    category: "1",
    price: 22.0,
    discount: 33.5,
    ratings: 99.0,
  ),
  Foods(
    id: "1",
    name: "Grilled Chicken",
    imagePath: "assets/images/images/lunch.jpeg",
    category: "2",
    price: 12.0,
    discount: 34.5,
    ratings: 69.0,
  ),
  Foods(
    id: "1",
    name: "Burger",
    imagePath: "assets/images/images/burgerr.png",
    category: "3",
    price: 12.0,
    discount: 34.5,
    ratings: 69.0,
  ),
];