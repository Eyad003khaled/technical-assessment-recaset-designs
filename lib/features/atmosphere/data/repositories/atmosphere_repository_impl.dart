import '../../domain/entities/atmosphere_entity.dart';
import '../../domain/repositories/atmosphere_repository.dart';
import '../datasources/atmosphere_local_datasource.dart';

class AtmosphereRepositoryImpl implements AtmosphereRepository {
  final AtmosphereLocalDataSource localDataSource;

  AtmosphereRepositoryImpl(this.localDataSource);

  @override
  Future<List<AtmosphereEntity>> getAtmospheres() async {
    return await localDataSource.getAtmospheres();
  }
}