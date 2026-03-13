import '../entities/atmosphere_entity.dart';

abstract class AtmosphereRepository {
  Future<List<AtmosphereEntity>> getAtmospheres();
}