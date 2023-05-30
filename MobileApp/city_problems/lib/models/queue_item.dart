part of models;

@freezed
class QueueItem with _$QueueItem {
  const factory QueueItem({
    required String description,
    required String name,
    required String status,
    required String uid,
    required String image,
  }) = QueueItem$;

  factory QueueItem.fromJson(Map<dynamic, dynamic> json) => _$QueueItemFromJson(Map<String, dynamic>.from(json));
}
