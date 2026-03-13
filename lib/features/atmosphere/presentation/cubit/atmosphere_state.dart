part of 'atmosphere_cubit.dart';

abstract class AtmosphereState {}

class AtmosphereInitial extends AtmosphereState {}

class AtmosphereLoading extends AtmosphereState {}

class AtmosphereSuccess extends AtmosphereState {
  final List<AtmosphereEntity> atmospheres;

  AtmosphereSuccess(this.atmospheres);
}

class AtmosphereFailure extends AtmosphereState {
  final String message;

  AtmosphereFailure(this.message);
}