import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/atmosphere_entity.dart';
import '../../domain/usecases/get_atmospheres_usecase.dart';

part 'atmosphere_state.dart';

class AtmosphereCubit extends Cubit<AtmosphereState> {
  final GetAtmospheresUseCase getAtmospheresUseCase;

  AtmosphereCubit(this.getAtmospheresUseCase) : super(AtmosphereInitial());

  Future<void> getAtmospheres() async {
    emit(AtmosphereLoading());
          await Future.delayed(const Duration(seconds: 2));

    try {
      final result = await getAtmospheresUseCase();
      emit(AtmosphereSuccess(result));
    } catch (e) {
      emit(AtmosphereFailure(e.toString()));
    }
  }
}