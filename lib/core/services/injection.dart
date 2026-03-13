import 'package:get_it/get_it.dart';
import '../../features/atmosphere/data/datasources/atmosphere_local_datasource.dart';
import '../../features/atmosphere/data/repositories/atmosphere_repository_impl.dart';
import '../../features/atmosphere/domain/repositories/atmosphere_repository.dart';
import '../../features/atmosphere/domain/usecases/get_atmospheres_usecase.dart';
import '../../features/atmosphere/presentation/cubit/atmosphere_cubit.dart';
import '../../features/food_menu/data/datasources/food_menu_local_datasource.dart';
import '../../features/food_menu/data/repositories/food_menu_repository_impl.dart';
import '../../features/food_menu/domain/repositories/food_menu_repository.dart';
import '../../features/food_menu/domain/usecases/get_food_menu_usecase.dart';
import '../../features/food_menu/presentation/cubit/food_menu_cubit.dart';

final getIt = GetIt.instance;

void initGetIt() {

  /// Datasource
  getIt.registerLazySingleton<FoodMenuLocalDataSource>(
    () => FoodMenuLocalDataSourceImpl(),
  );

  /// Repository
  getIt.registerLazySingleton<FoodMenuRepository>(
    () => FoodMenuRepositoryImpl(
      getIt<FoodMenuLocalDataSource>(),
    ),
  );

  /// UseCase
  getIt.registerLazySingleton(
    () => GetFoodMenuUseCase(
      getIt<FoodMenuRepository>(),
    ),
  );

  /// Cubit
  getIt.registerFactory(
    () => FoodMenuCubit(
      getIt<GetFoodMenuUseCase>(),
    ),
  );



  /// Atmosphere Datasource
getIt.registerLazySingleton<AtmosphereLocalDataSource>(
  () => AtmosphereLocalDataSourceImpl(),
);

/// Atmosphere Repository
getIt.registerLazySingleton<AtmosphereRepository>(
  () => AtmosphereRepositoryImpl(
    getIt<AtmosphereLocalDataSource>(),
  ),
);

/// Atmosphere Usecase
getIt.registerLazySingleton(
  () => GetAtmospheresUseCase(
    getIt<AtmosphereRepository>(),
  ),
);

/// Atmosphere Cubit
getIt.registerFactory(
  () => AtmosphereCubit(
    getIt<GetAtmospheresUseCase>(),
  ),
);
}