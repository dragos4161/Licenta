part of actions;

@freezed
class PostDanger with _$PostDanger {
  const factory PostDanger(Danger danger, ActionResponse response) = PostDangerStart;

  const factory PostDanger.successful(Danger danger) = PostDangerSuccessful;

  const factory PostDanger.error(Object error, StackTrace stackTrace) = PostDangerError;
}
