part of actions;

@freezed
class TakePicture with _$TakePicture {
  const factory TakePicture() = TakePictureStart;

  const factory TakePicture.successful(String? url) = TakePictureSuccessful;

  const factory TakePicture.error(Object error, StackTrace stackTrace) = TakePictureError;
}
