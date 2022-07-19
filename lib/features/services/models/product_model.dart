class ProductModel {
  final int id;
  final String name;
  final String description;
  final int price;
  final String type;
  final String brand;
  final String pictureUrl;
  final int quantityInStock;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.type,
    required this.brand,
    required this.pictureUrl,
    required this.quantityInStock,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      name: jsonData['name'],
      description: jsonData['description'],
      price: jsonData['price'],
      type: jsonData['type'],
      brand: jsonData['brand'],
      pictureUrl: jsonData['pictureUrl'],
      quantityInStock: jsonData['quantityInStock'],
    );
  }
}
