part of models;

@freezed
class Danger with _$Danger {
  const factory Danger({
    required String category,
    required String uid,
    required CurrentLocation location,
    String? image,
    @Default('submitted') String status,
  }) = Danger$;

  factory Danger.fromJson(Map<dynamic, dynamic> json) => _$DangerFromJson(Map<String, dynamic>.from(json));
}
