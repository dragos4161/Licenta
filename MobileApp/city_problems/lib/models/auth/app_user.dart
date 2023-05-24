part of models;

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String uid,
    required String email,
    @Default(0) int points,
    String? displayName,
    String? imageUrl,

  }) = AppUser$;

  factory AppUser.fromJson(Map<dynamic, dynamic> json) => _$AppUserFromJson(Map<String, dynamic>.from(json));
}
