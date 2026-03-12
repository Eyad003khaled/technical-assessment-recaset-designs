import '../../../../core/utils/app_images.dart';
import '../models/food_menu_model.dart';

abstract class FoodMenuLocalDataSource {
  Future<List<FoodMenuModel>> getFoodMenu();
}

class FoodMenuLocalDataSourceImpl implements FoodMenuLocalDataSource {
  @override
  Future<List<FoodMenuModel>> getFoodMenu() async {
    return [
      FoodMenuModel(
        image: AppImages.imagesSteak,
        title: "Tenderloin Steak with Grilled Vegetables",
        price: 49.95,
      ),
      FoodMenuModel(
        image: AppImages.imagesSushi,
        title: "25 Piece Sushi Boat with Three Sides",
        price: 49.95,
      ),
      FoodMenuModel(
        image: AppImages.imagesSharedMeal,
        title: "Shared Meal and Drinks",
        price: 49.95,
      ),
      FoodMenuModel(
        image: AppImages.imagesPasta,
        title: "25 Piece Sushi Boat with Three Sides",
        price: 49.95,
      ),
    ];
  }
}