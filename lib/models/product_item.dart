import 'package:json_annotation/json_annotation.dart';

const String columnId = "id";
const String columnTitle = "title";
const String columnPrice = "price";
const String columnDesc = "description";
const String columnCat = "category";
const String columnImg = "image";
const String columnRate = "rate";
const String columnCount = "count";

@JsonSerializable()
class ProductItem {
  int id;
  String title;
  double price;
  String description;
  String category;
  String image;
  double rate;
  int count;

  ProductItem({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rate,
    required this.count,
  });

  factory ProductItem.fromJson(Map<String, dynamic> json) => ProductItem(
        id: json[columnId],
        title: json[columnTitle],
        price: json[columnPrice],
        description: json[columnDesc],
        category: json[columnCat],
        image: json[columnImg],
        rate: json[columnRate],
        count: json[columnCount],
      );

  Map<String, dynamic> toJson(ProductItem productItem) => {
        columnId: productItem.id,
        columnTitle: productItem.title,
        columnPrice: productItem.price,
        columnDesc: productItem.description,
        columnCat: productItem.category,
        columnImg: productItem.image,
        columnRate: productItem.rate,
        columnCount: productItem.count,
      };
}
