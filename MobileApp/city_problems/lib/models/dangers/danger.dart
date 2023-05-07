part of models;

@freezed
class Danger with _$Danger {
  const factory Danger({
    required String category,
    required String uid,
    required CurrentLocation location,
}) = Danger$;

  factory Danger.fromJson(Map<dynamic, dynamic> json) => _$DangerFromJson(Map<String, dynamic>.from(json));
}
