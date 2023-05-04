part of models;

@freezed
class CurrentLocation with _$CurrentLocation {
  const factory CurrentLocation({
    required double latitude,
    required double longitude,
}) = CurrentLocation$;

  factory CurrentLocation.fromJson(Map<dynamic, dynamic> json) => _$CurrentLocationFromJson(Map<String, dynamic>.from(json));
}
