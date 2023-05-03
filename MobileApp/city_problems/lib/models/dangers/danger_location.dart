part of models;

@freezed
class DangerLocation with _$DangerLocation {
  const factory DangerLocation({
    required double latitude,
    required double longitude,
}) = DangerLocation$;

  factory DangerLocation.fromJson(Map<dynamic, dynamic> json) => _$DangerLocationFromJson(Map<String, dynamic>.from(json));
}
