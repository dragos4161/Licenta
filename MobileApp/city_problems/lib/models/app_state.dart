part of models;

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(AuthState()) AuthState auth,
    @Default(DangerState()) DangerState danger,
    CurrentLocation? userLocation,
    @Default(true) bool isLoading,
    @Default(0) int points,
    String? dangerPicture,
    String? profilePicture,
}) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
