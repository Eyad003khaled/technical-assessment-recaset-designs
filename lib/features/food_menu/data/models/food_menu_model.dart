import '../../domain/entities/food_menu_entity.dart';

class FoodMenuModel extends FoodMenuEntity {
  FoodMenuModel({
    required super.image,
    required super.title,
    required super.price,
  });

  factory FoodMenuModel.fromJson(Map<String, dynamic> json) {
    return FoodMenuModel(
      image: json['image'],
      title: json['title'],
      price: json['price'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'title': title,
      'price': price,
    };
  }
}