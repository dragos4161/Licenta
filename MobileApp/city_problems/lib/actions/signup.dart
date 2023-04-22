part of actions;

@freezed
class SignUp with _$SignUp {
  const factory SignUp({
    required String email,
    required String password,
    required String displayName,
}) = SignUpStart;

  const factory SignUp.successful(AppUser user) = SignUpSuccessful;

  const factory SignUp.error(Object error, StackTrace stackTrace) = SignUpError;
}
