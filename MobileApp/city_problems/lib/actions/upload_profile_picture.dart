part of actions;

@freezed
class UploadProfilePicture with _$UploadProfilePicture  {
  const factory UploadProfilePicture(String uid) = UploadProfilePictureStart;

  const factory UploadProfilePicture.successful(String? url) = UploadProfilePictureSuccessful;

  const factory UploadProfilePicture.error(Object error, StackTrace stackTrace) = UploadProfilePictureError;
}
