import '../../../../core/utils/app_images.dart';
import '../models/atmosphere_model.dart';

abstract class AtmosphereLocalDataSource {
  Future<List<AtmosphereModel>> getAtmospheres();
}

class AtmosphereLocalDataSourceImpl implements AtmosphereLocalDataSource {
  @override
  Future<List<AtmosphereModel>> getAtmospheres() async {
    return [
      AtmosphereModel(image: AppImages.imagesAtmosphere1),
      AtmosphereModel(image: AppImages.imagesAtmosphere2),
      AtmosphereModel(image: AppImages.imagesAtmosphere1),
      AtmosphereModel(image: AppImages.imagesAtmosphere2),
    ];
  }
}