part of actions;

@freezed
class TakePicture with _$TakePicture {
  const factory TakePicture() = TakePictureStart;

  const factory TakePicture.successful(File? picture) = TakePictureSuccessful;

  const factory TakePicture.error(Object error, StackTrace stackTrace) = TakePictureError;
}
