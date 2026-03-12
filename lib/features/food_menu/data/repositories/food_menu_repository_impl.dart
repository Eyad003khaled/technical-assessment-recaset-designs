import '../../domain/entities/food_menu_entity.dart';
import '../../domain/repositories/food_menu_repository.dart';
import '../datasources/food_menu_local_datasource.dart';

class FoodMenuRepositoryImpl implements FoodMenuRepository {
  final FoodMenuLocalDataSource localDataSource;

  FoodMenuRepositoryImpl(this.localDataSource);

  @override
  Future<List<FoodMenuEntity>> getFoodMenu() async {
    return await localDataSource.getFoodMenu();
  }
}