part of models;

@freezed
class DangerState with _$DangerState {
  const factory DangerState({
    @Default(<Danger>[]) List<Danger> dangers,
    DangerLocation? currentLocation,
    String? currentDangerUrl,
    String? currentDangerCategory,
}) = DangerState$;

  factory DangerState.fromJson(Map<dynamic, dynamic> json) => _$DangerStateFromJson(Map<String, dynamic>.from(json));
}
