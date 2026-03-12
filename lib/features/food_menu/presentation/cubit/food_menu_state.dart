part of 'food_menu_cubit.dart';

abstract class FoodMenuState {}

class FoodMenuInitial extends FoodMenuState {}

class FoodMenuLoading extends FoodMenuState {}

class FoodMenuSuccess extends FoodMenuState {
  final List<FoodMenuEntity> menu;

  FoodMenuSuccess(this.menu);
}

class FoodMenuFailure extends FoodMenuState {
  final String message;

  FoodMenuFailure(this.message);
}