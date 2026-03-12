import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/food_menu_entity.dart';
import '../../domain/usecases/get_food_menu_usecase.dart';

part 'food_menu_state.dart';

class FoodMenuCubit extends Cubit<FoodMenuState> {
  final GetFoodMenuUseCase getFoodMenuUseCase;

  FoodMenuCubit(this.getFoodMenuUseCase) : super(FoodMenuInitial());

  Future<void> getMenu() async {
    emit(FoodMenuLoading());
   await Future.delayed(const Duration(seconds: 2));
    try {
      final result = await getFoodMenuUseCase();
      emit(FoodMenuSuccess(result));
    } catch (e) {
      emit(FoodMenuFailure(e.toString()));
    }
  }
}