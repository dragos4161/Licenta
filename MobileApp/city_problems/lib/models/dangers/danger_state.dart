part of models;

@freezed
class DangerState with _$DangerState {
  const factory DangerState({
    @Default(<Danger>[]) List<Danger> dangers,
    DangerLocation? currentLocation,
}) = DangerState$;

  factory DangerState.fromJson(Map<dynamic, dynamic> json) => _$DangerStateFromJson(Map<String, dynamic>.from(json));
}
