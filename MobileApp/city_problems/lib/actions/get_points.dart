part of actions;

@freezed
class GetPoints with _$GetPoints  {
  const factory GetPoints(String uid) = GetPointsStart;

  const factory GetPoints.successful(int points) = GetPointsSuccessful;

  const factory GetPoints.error(Object error, StackTrace stackTrace) = GetPointsError;
}
