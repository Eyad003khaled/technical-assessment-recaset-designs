import '../entities/food_menu_entity.dart';

abstract class FoodMenuRepository {
  Future<List<FoodMenuEntity>> getFoodMenu();
}