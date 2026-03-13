import '../../domain/entities/atmosphere_entity.dart';

class AtmosphereModel extends AtmosphereEntity {
  AtmosphereModel({
    required super.image,
  });

  factory AtmosphereModel.fromJson(Map<String, dynamic> json) {
    return AtmosphereModel(
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "image": image,
    };
  }
}