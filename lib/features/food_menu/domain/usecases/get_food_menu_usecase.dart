import '../entities/food_menu_entity.dart';
import '../repositories/food_menu_repository.dart';

class GetFoodMenuUseCase {
  final FoodMenuRepository repository;

  GetFoodMenuUseCase(this.repository);

  Future<List<FoodMenuEntity>> call() async {
    return await repository.getFoodMenu();
  }
}