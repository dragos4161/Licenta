part of actions;

@freezed
class ListenForDangers with _$ListenForDangers {
  const factory ListenForDangers.start(String uid) = ListenForDangersStart;

  const factory ListenForDangers.done() = ListenForDangersDone;

  const factory ListenForDangers.event(List<Danger> userDangers) = OnDangerEvent;

  const factory ListenForDangers.error(Object error, StackTrace stackTrace) = _ListenForDangersError;
}
