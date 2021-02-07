import 'package:sample/Keys/Keys.dart';

class ProductDataModel {
  final String title, description;

  ProductDataModel({this.title, this.description});

  factory ProductDataModel.fromJson(Map<String, dynamic> json) {
    return new ProductDataModel(
      title: json[Keys.title] as String,
      description: json[Keys.description] as String,
    );
  }
}
