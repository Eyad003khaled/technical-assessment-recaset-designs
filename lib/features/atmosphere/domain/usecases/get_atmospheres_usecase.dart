import '../entities/atmosphere_entity.dart';
import '../repositories/atmosphere_repository.dart';

class GetAtmospheresUseCase {
  final AtmosphereRepository repository;

  GetAtmospheresUseCase(this.repository);

  Future<List<AtmosphereEntity>> call() async {
    return repository.getAtmospheres();
  }
}