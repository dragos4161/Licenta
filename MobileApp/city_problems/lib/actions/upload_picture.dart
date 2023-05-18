part of actions;

@freezed
class UploadPicture with _$UploadPicture  {
  const factory UploadPicture(File picture) = UploadPictureStart;

  const factory UploadPicture.successful() = UploadPictureSuccessful;

  const factory UploadPicture.error(Object error, StackTrace stackTrace) = UploadPictureError;
}
