// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Login {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoginStart value)? $default, {
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res, Login>;
}

/// @nodoc
class _$LoginCopyWithImpl<$Res, $Val extends Login>
    implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginStartCopyWith<$Res> {
  factory _$$LoginStartCopyWith(
          _$LoginStart value, $Res Function(_$LoginStart) then) =
      __$$LoginStartCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginStartCopyWithImpl<$Res>
    extends _$LoginCopyWithImpl<$Res, _$LoginStart>
    implements _$$LoginStartCopyWith<$Res> {
  __$$LoginStartCopyWithImpl(
      _$LoginStart _value, $Res Function(_$LoginStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginStart(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginStart implements LoginStart {
  const _$LoginStart({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'Login(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStart &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStartCopyWith<_$LoginStart> get copyWith =>
      __$$LoginStartCopyWithImpl<_$LoginStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoginStart value)? $default, {
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class LoginStart implements Login {
  const factory LoginStart(
      {required final String email,
      required final String password}) = _$LoginStart;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginStartCopyWith<_$LoginStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSuccessfulCopyWith<$Res> {
  factory _$$LoginSuccessfulCopyWith(
          _$LoginSuccessful value, $Res Function(_$LoginSuccessful) then) =
      __$$LoginSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoginSuccessfulCopyWithImpl<$Res>
    extends _$LoginCopyWithImpl<$Res, _$LoginSuccessful>
    implements _$$LoginSuccessfulCopyWith<$Res> {
  __$$LoginSuccessfulCopyWithImpl(
      _$LoginSuccessful _value, $Res Function(_$LoginSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoginSuccessful(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$LoginSuccessful implements LoginSuccessful {
  const _$LoginSuccessful(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'Login.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessful &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessfulCopyWith<_$LoginSuccessful> get copyWith =>
      __$$LoginSuccessfulCopyWithImpl<_$LoginSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoginStart value)? $default, {
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessful implements Login {
  const factory LoginSuccessful(final AppUser user) = _$LoginSuccessful;

  AppUser get user;
  @JsonKey(ignore: true)
  _$$LoginSuccessfulCopyWith<_$LoginSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginErrorCopyWith<$Res> {
  factory _$$LoginErrorCopyWith(
          _$LoginError value, $Res Function(_$LoginError) then) =
      __$$LoginErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$LoginErrorCopyWithImpl<$Res>
    extends _$LoginCopyWithImpl<$Res, _$LoginError>
    implements _$$LoginErrorCopyWith<$Res> {
  __$$LoginErrorCopyWithImpl(
      _$LoginError _value, $Res Function(_$LoginError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$LoginError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$LoginError implements LoginError {
  const _$LoginError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'Login.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorCopyWith<_$LoginError> get copyWith =>
      __$$LoginErrorCopyWithImpl<_$LoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoginStart value)? $default, {
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginError implements Login {
  const factory LoginError(final Object error, final StackTrace stackTrace) =
      _$LoginError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$LoginErrorCopyWith<_$LoginError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InitializeUser {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeUserStart value) $default, {
    required TResult Function(InitializeUserSuccessful value) successful,
    required TResult Function(InitializeUserError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(InitializeUserStart value)? $default, {
    TResult? Function(InitializeUserSuccessful value)? successful,
    TResult? Function(InitializeUserError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeUserStart value)? $default, {
    TResult Function(InitializeUserSuccessful value)? successful,
    TResult Function(InitializeUserError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializeUserCopyWith<$Res> {
  factory $InitializeUserCopyWith(
          InitializeUser value, $Res Function(InitializeUser) then) =
      _$InitializeUserCopyWithImpl<$Res, InitializeUser>;
}

/// @nodoc
class _$InitializeUserCopyWithImpl<$Res, $Val extends InitializeUser>
    implements $InitializeUserCopyWith<$Res> {
  _$InitializeUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeUserStartCopyWith<$Res> {
  factory _$$InitializeUserStartCopyWith(_$InitializeUserStart value,
          $Res Function(_$InitializeUserStart) then) =
      __$$InitializeUserStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeUserStartCopyWithImpl<$Res>
    extends _$InitializeUserCopyWithImpl<$Res, _$InitializeUserStart>
    implements _$$InitializeUserStartCopyWith<$Res> {
  __$$InitializeUserStartCopyWithImpl(
      _$InitializeUserStart _value, $Res Function(_$InitializeUserStart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeUserStart implements InitializeUserStart {
  const _$InitializeUserStart();

  @override
  String toString() {
    return 'InitializeUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeUserStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeUserStart value) $default, {
    required TResult Function(InitializeUserSuccessful value) successful,
    required TResult Function(InitializeUserError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(InitializeUserStart value)? $default, {
    TResult? Function(InitializeUserSuccessful value)? successful,
    TResult? Function(InitializeUserError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeUserStart value)? $default, {
    TResult Function(InitializeUserSuccessful value)? successful,
    TResult Function(InitializeUserError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class InitializeUserStart implements InitializeUser {
  const factory InitializeUserStart() = _$InitializeUserStart;
}

/// @nodoc
abstract class _$$InitializeUserSuccessfulCopyWith<$Res> {
  factory _$$InitializeUserSuccessfulCopyWith(_$InitializeUserSuccessful value,
          $Res Function(_$InitializeUserSuccessful) then) =
      __$$InitializeUserSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser? user});

  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$InitializeUserSuccessfulCopyWithImpl<$Res>
    extends _$InitializeUserCopyWithImpl<$Res, _$InitializeUserSuccessful>
    implements _$$InitializeUserSuccessfulCopyWith<$Res> {
  __$$InitializeUserSuccessfulCopyWithImpl(_$InitializeUserSuccessful _value,
      $Res Function(_$InitializeUserSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$InitializeUserSuccessful(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$InitializeUserSuccessful implements InitializeUserSuccessful {
  const _$InitializeUserSuccessful(this.user);

  @override
  final AppUser? user;

  @override
  String toString() {
    return 'InitializeUser.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeUserSuccessful &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeUserSuccessfulCopyWith<_$InitializeUserSuccessful>
      get copyWith =>
          __$$InitializeUserSuccessfulCopyWithImpl<_$InitializeUserSuccessful>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeUserStart value) $default, {
    required TResult Function(InitializeUserSuccessful value) successful,
    required TResult Function(InitializeUserError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(InitializeUserStart value)? $default, {
    TResult? Function(InitializeUserSuccessful value)? successful,
    TResult? Function(InitializeUserError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeUserStart value)? $default, {
    TResult Function(InitializeUserSuccessful value)? successful,
    TResult Function(InitializeUserError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class InitializeUserSuccessful implements InitializeUser {
  const factory InitializeUserSuccessful(final AppUser? user) =
      _$InitializeUserSuccessful;

  AppUser? get user;
  @JsonKey(ignore: true)
  _$$InitializeUserSuccessfulCopyWith<_$InitializeUserSuccessful>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializeUserErrorCopyWith<$Res> {
  factory _$$InitializeUserErrorCopyWith(_$InitializeUserError value,
          $Res Function(_$InitializeUserError) then) =
      __$$InitializeUserErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$InitializeUserErrorCopyWithImpl<$Res>
    extends _$InitializeUserCopyWithImpl<$Res, _$InitializeUserError>
    implements _$$InitializeUserErrorCopyWith<$Res> {
  __$$InitializeUserErrorCopyWithImpl(
      _$InitializeUserError _value, $Res Function(_$InitializeUserError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$InitializeUserError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$InitializeUserError implements InitializeUserError {
  const _$InitializeUserError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'InitializeUser.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeUserError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeUserErrorCopyWith<_$InitializeUserError> get copyWith =>
      __$$InitializeUserErrorCopyWithImpl<_$InitializeUserError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitializeUserStart value) $default, {
    required TResult Function(InitializeUserSuccessful value) successful,
    required TResult Function(InitializeUserError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(InitializeUserStart value)? $default, {
    TResult? Function(InitializeUserSuccessful value)? successful,
    TResult? Function(InitializeUserError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitializeUserStart value)? $default, {
    TResult Function(InitializeUserSuccessful value)? successful,
    TResult Function(InitializeUserError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InitializeUserError implements InitializeUser {
  const factory InitializeUserError(
      final Object error, final StackTrace stackTrace) = _$InitializeUserError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$InitializeUserErrorCopyWith<_$InitializeUserError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUp {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, String displayName)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, String displayName)?
        $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String displayName)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignUpStart value) $default, {
    required TResult Function(SignUpSuccessful value) successful,
    required TResult Function(SignUpError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignUpStart value)? $default, {
    TResult? Function(SignUpSuccessful value)? successful,
    TResult? Function(SignUpError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignUpStart value)? $default, {
    TResult Function(SignUpSuccessful value)? successful,
    TResult Function(SignUpError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpCopyWith<$Res> {
  factory $SignUpCopyWith(SignUp value, $Res Function(SignUp) then) =
      _$SignUpCopyWithImpl<$Res, SignUp>;
}

/// @nodoc
class _$SignUpCopyWithImpl<$Res, $Val extends SignUp>
    implements $SignUpCopyWith<$Res> {
  _$SignUpCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignUpStartCopyWith<$Res> {
  factory _$$SignUpStartCopyWith(
          _$SignUpStart value, $Res Function(_$SignUpStart) then) =
      __$$SignUpStartCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String displayName});
}

/// @nodoc
class __$$SignUpStartCopyWithImpl<$Res>
    extends _$SignUpCopyWithImpl<$Res, _$SignUpStart>
    implements _$$SignUpStartCopyWith<$Res> {
  __$$SignUpStartCopyWithImpl(
      _$SignUpStart _value, $Res Function(_$SignUpStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? displayName = null,
  }) {
    return _then(_$SignUpStart(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpStart implements SignUpStart {
  const _$SignUpStart(
      {required this.email, required this.password, required this.displayName});

  @override
  final String email;
  @override
  final String password;
  @override
  final String displayName;

  @override
  String toString() {
    return 'SignUp(email: $email, password: $password, displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStart &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStartCopyWith<_$SignUpStart> get copyWith =>
      __$$SignUpStartCopyWithImpl<_$SignUpStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, String displayName)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(email, password, displayName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, String displayName)?
        $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(email, password, displayName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String displayName)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password, displayName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignUpStart value) $default, {
    required TResult Function(SignUpSuccessful value) successful,
    required TResult Function(SignUpError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignUpStart value)? $default, {
    TResult? Function(SignUpSuccessful value)? successful,
    TResult? Function(SignUpError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignUpStart value)? $default, {
    TResult Function(SignUpSuccessful value)? successful,
    TResult Function(SignUpError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SignUpStart implements SignUp {
  const factory SignUpStart(
      {required final String email,
      required final String password,
      required final String displayName}) = _$SignUpStart;

  String get email;
  String get password;
  String get displayName;
  @JsonKey(ignore: true)
  _$$SignUpStartCopyWith<_$SignUpStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpSuccessfulCopyWith<$Res> {
  factory _$$SignUpSuccessfulCopyWith(
          _$SignUpSuccessful value, $Res Function(_$SignUpSuccessful) then) =
      __$$SignUpSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$SignUpSuccessfulCopyWithImpl<$Res>
    extends _$SignUpCopyWithImpl<$Res, _$SignUpSuccessful>
    implements _$$SignUpSuccessfulCopyWith<$Res> {
  __$$SignUpSuccessfulCopyWithImpl(
      _$SignUpSuccessful _value, $Res Function(_$SignUpSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SignUpSuccessful(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$SignUpSuccessful implements SignUpSuccessful {
  const _$SignUpSuccessful(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'SignUp.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpSuccessful &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpSuccessfulCopyWith<_$SignUpSuccessful> get copyWith =>
      __$$SignUpSuccessfulCopyWithImpl<_$SignUpSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, String displayName)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, String displayName)?
        $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String displayName)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignUpStart value) $default, {
    required TResult Function(SignUpSuccessful value) successful,
    required TResult Function(SignUpError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignUpStart value)? $default, {
    TResult? Function(SignUpSuccessful value)? successful,
    TResult? Function(SignUpError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignUpStart value)? $default, {
    TResult Function(SignUpSuccessful value)? successful,
    TResult Function(SignUpError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SignUpSuccessful implements SignUp {
  const factory SignUpSuccessful(final AppUser user) = _$SignUpSuccessful;

  AppUser get user;
  @JsonKey(ignore: true)
  _$$SignUpSuccessfulCopyWith<_$SignUpSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpErrorCopyWith<$Res> {
  factory _$$SignUpErrorCopyWith(
          _$SignUpError value, $Res Function(_$SignUpError) then) =
      __$$SignUpErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$SignUpErrorCopyWithImpl<$Res>
    extends _$SignUpCopyWithImpl<$Res, _$SignUpError>
    implements _$$SignUpErrorCopyWith<$Res> {
  __$$SignUpErrorCopyWithImpl(
      _$SignUpError _value, $Res Function(_$SignUpError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$SignUpError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$SignUpError implements SignUpError {
  const _$SignUpError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'SignUp.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpErrorCopyWith<_$SignUpError> get copyWith =>
      __$$SignUpErrorCopyWithImpl<_$SignUpError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, String displayName)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, String displayName)?
        $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String displayName)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignUpStart value) $default, {
    required TResult Function(SignUpSuccessful value) successful,
    required TResult Function(SignUpError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignUpStart value)? $default, {
    TResult? Function(SignUpSuccessful value)? successful,
    TResult? Function(SignUpError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignUpStart value)? $default, {
    TResult Function(SignUpSuccessful value)? successful,
    TResult Function(SignUpError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignUpError implements SignUp {
  const factory SignUpError(final Object error, final StackTrace stackTrace) =
      _$SignUpError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$SignUpErrorCopyWith<_$SignUpError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Logout {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LogoutStart value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LogoutStart value)? $default, {
    TResult? Function(LogoutSuccessful value)? successful,
    TResult? Function(LogoutError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutCopyWith<$Res> {
  factory $LogoutCopyWith(Logout value, $Res Function(Logout) then) =
      _$LogoutCopyWithImpl<$Res, Logout>;
}

/// @nodoc
class _$LogoutCopyWithImpl<$Res, $Val extends Logout>
    implements $LogoutCopyWith<$Res> {
  _$LogoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LogoutStartCopyWith<$Res> {
  factory _$$LogoutStartCopyWith(
          _$LogoutStart value, $Res Function(_$LogoutStart) then) =
      __$$LogoutStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutStartCopyWithImpl<$Res>
    extends _$LogoutCopyWithImpl<$Res, _$LogoutStart>
    implements _$$LogoutStartCopyWith<$Res> {
  __$$LogoutStartCopyWithImpl(
      _$LogoutStart _value, $Res Function(_$LogoutStart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutStart implements LogoutStart {
  const _$LogoutStart();

  @override
  String toString() {
    return 'Logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LogoutStart value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LogoutStart value)? $default, {
    TResult? Function(LogoutSuccessful value)? successful,
    TResult? Function(LogoutError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class LogoutStart implements Logout {
  const factory LogoutStart() = _$LogoutStart;
}

/// @nodoc
abstract class _$$LogoutSuccessfulCopyWith<$Res> {
  factory _$$LogoutSuccessfulCopyWith(
          _$LogoutSuccessful value, $Res Function(_$LogoutSuccessful) then) =
      __$$LogoutSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutSuccessfulCopyWithImpl<$Res>
    extends _$LogoutCopyWithImpl<$Res, _$LogoutSuccessful>
    implements _$$LogoutSuccessfulCopyWith<$Res> {
  __$$LogoutSuccessfulCopyWithImpl(
      _$LogoutSuccessful _value, $Res Function(_$LogoutSuccessful) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutSuccessful implements LogoutSuccessful {
  const _$LogoutSuccessful();

  @override
  String toString() {
    return 'Logout.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LogoutStart value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LogoutStart value)? $default, {
    TResult? Function(LogoutSuccessful value)? successful,
    TResult? Function(LogoutError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LogoutSuccessful implements Logout {
  const factory LogoutSuccessful() = _$LogoutSuccessful;
}

/// @nodoc
abstract class _$$LogoutErrorCopyWith<$Res> {
  factory _$$LogoutErrorCopyWith(
          _$LogoutError value, $Res Function(_$LogoutError) then) =
      __$$LogoutErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$LogoutErrorCopyWithImpl<$Res>
    extends _$LogoutCopyWithImpl<$Res, _$LogoutError>
    implements _$$LogoutErrorCopyWith<$Res> {
  __$$LogoutErrorCopyWithImpl(
      _$LogoutError _value, $Res Function(_$LogoutError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$LogoutError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$LogoutError implements LogoutError {
  const _$LogoutError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'Logout.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutErrorCopyWith<_$LogoutError> get copyWith =>
      __$$LogoutErrorCopyWithImpl<_$LogoutError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LogoutStart value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LogoutStart value)? $default, {
    TResult? Function(LogoutSuccessful value)? successful,
    TResult? Function(LogoutError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LogoutError implements Logout {
  const factory LogoutError(final Object error, final StackTrace stackTrace) =
      _$LogoutError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$LogoutErrorCopyWith<_$LogoutError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetLocation {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(CurrentLocation location) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(CurrentLocation location)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(CurrentLocation location)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetLocationStart value) $default, {
    required TResult Function(GetLocationSuccessful value) successful,
    required TResult Function(GetLocationError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetLocationStart value)? $default, {
    TResult? Function(GetLocationSuccessful value)? successful,
    TResult? Function(GetLocationError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetLocationStart value)? $default, {
    TResult Function(GetLocationSuccessful value)? successful,
    TResult Function(GetLocationError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLocationCopyWith<$Res> {
  factory $GetLocationCopyWith(
          GetLocation value, $Res Function(GetLocation) then) =
      _$GetLocationCopyWithImpl<$Res, GetLocation>;
}

/// @nodoc
class _$GetLocationCopyWithImpl<$Res, $Val extends GetLocation>
    implements $GetLocationCopyWith<$Res> {
  _$GetLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetLocationStartCopyWith<$Res> {
  factory _$$GetLocationStartCopyWith(
          _$GetLocationStart value, $Res Function(_$GetLocationStart) then) =
      __$$GetLocationStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLocationStartCopyWithImpl<$Res>
    extends _$GetLocationCopyWithImpl<$Res, _$GetLocationStart>
    implements _$$GetLocationStartCopyWith<$Res> {
  __$$GetLocationStartCopyWithImpl(
      _$GetLocationStart _value, $Res Function(_$GetLocationStart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetLocationStart implements GetLocationStart {
  const _$GetLocationStart();

  @override
  String toString() {
    return 'GetLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetLocationStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(CurrentLocation location) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(CurrentLocation location)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(CurrentLocation location)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetLocationStart value) $default, {
    required TResult Function(GetLocationSuccessful value) successful,
    required TResult Function(GetLocationError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetLocationStart value)? $default, {
    TResult? Function(GetLocationSuccessful value)? successful,
    TResult? Function(GetLocationError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetLocationStart value)? $default, {
    TResult Function(GetLocationSuccessful value)? successful,
    TResult Function(GetLocationError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetLocationStart implements GetLocation {
  const factory GetLocationStart() = _$GetLocationStart;
}

/// @nodoc
abstract class _$$GetLocationSuccessfulCopyWith<$Res> {
  factory _$$GetLocationSuccessfulCopyWith(_$GetLocationSuccessful value,
          $Res Function(_$GetLocationSuccessful) then) =
      __$$GetLocationSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrentLocation location});

  $CurrentLocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$GetLocationSuccessfulCopyWithImpl<$Res>
    extends _$GetLocationCopyWithImpl<$Res, _$GetLocationSuccessful>
    implements _$$GetLocationSuccessfulCopyWith<$Res> {
  __$$GetLocationSuccessfulCopyWithImpl(_$GetLocationSuccessful _value,
      $Res Function(_$GetLocationSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$GetLocationSuccessful(
      null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as CurrentLocation,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentLocationCopyWith<$Res> get location {
    return $CurrentLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc

class _$GetLocationSuccessful implements GetLocationSuccessful {
  const _$GetLocationSuccessful(this.location);

  @override
  final CurrentLocation location;

  @override
  String toString() {
    return 'GetLocation.successful(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLocationSuccessful &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLocationSuccessfulCopyWith<_$GetLocationSuccessful> get copyWith =>
      __$$GetLocationSuccessfulCopyWithImpl<_$GetLocationSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(CurrentLocation location) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(CurrentLocation location)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(CurrentLocation location)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetLocationStart value) $default, {
    required TResult Function(GetLocationSuccessful value) successful,
    required TResult Function(GetLocationError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetLocationStart value)? $default, {
    TResult? Function(GetLocationSuccessful value)? successful,
    TResult? Function(GetLocationError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetLocationStart value)? $default, {
    TResult Function(GetLocationSuccessful value)? successful,
    TResult Function(GetLocationError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetLocationSuccessful implements GetLocation {
  const factory GetLocationSuccessful(final CurrentLocation location) =
      _$GetLocationSuccessful;

  CurrentLocation get location;
  @JsonKey(ignore: true)
  _$$GetLocationSuccessfulCopyWith<_$GetLocationSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLocationErrorCopyWith<$Res> {
  factory _$$GetLocationErrorCopyWith(
          _$GetLocationError value, $Res Function(_$GetLocationError) then) =
      __$$GetLocationErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetLocationErrorCopyWithImpl<$Res>
    extends _$GetLocationCopyWithImpl<$Res, _$GetLocationError>
    implements _$$GetLocationErrorCopyWith<$Res> {
  __$$GetLocationErrorCopyWithImpl(
      _$GetLocationError _value, $Res Function(_$GetLocationError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetLocationError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetLocationError implements GetLocationError {
  const _$GetLocationError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetLocation.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLocationError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLocationErrorCopyWith<_$GetLocationError> get copyWith =>
      __$$GetLocationErrorCopyWithImpl<_$GetLocationError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(CurrentLocation location) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(CurrentLocation location)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(CurrentLocation location)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetLocationStart value) $default, {
    required TResult Function(GetLocationSuccessful value) successful,
    required TResult Function(GetLocationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetLocationStart value)? $default, {
    TResult? Function(GetLocationSuccessful value)? successful,
    TResult? Function(GetLocationError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetLocationStart value)? $default, {
    TResult Function(GetLocationSuccessful value)? successful,
    TResult Function(GetLocationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetLocationError implements GetLocation {
  const factory GetLocationError(
      final Object error, final StackTrace stackTrace) = _$GetLocationError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetLocationErrorCopyWith<_$GetLocationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TakePicture {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String? url) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String? url)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String? url)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TakePictureStart value) $default, {
    required TResult Function(TakePictureSuccessful value) successful,
    required TResult Function(TakePictureError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(TakePictureStart value)? $default, {
    TResult? Function(TakePictureSuccessful value)? successful,
    TResult? Function(TakePictureError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TakePictureStart value)? $default, {
    TResult Function(TakePictureSuccessful value)? successful,
    TResult Function(TakePictureError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TakePictureCopyWith<$Res> {
  factory $TakePictureCopyWith(
          TakePicture value, $Res Function(TakePicture) then) =
      _$TakePictureCopyWithImpl<$Res, TakePicture>;
}

/// @nodoc
class _$TakePictureCopyWithImpl<$Res, $Val extends TakePicture>
    implements $TakePictureCopyWith<$Res> {
  _$TakePictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TakePictureStartCopyWith<$Res> {
  factory _$$TakePictureStartCopyWith(
          _$TakePictureStart value, $Res Function(_$TakePictureStart) then) =
      __$$TakePictureStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TakePictureStartCopyWithImpl<$Res>
    extends _$TakePictureCopyWithImpl<$Res, _$TakePictureStart>
    implements _$$TakePictureStartCopyWith<$Res> {
  __$$TakePictureStartCopyWithImpl(
      _$TakePictureStart _value, $Res Function(_$TakePictureStart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TakePictureStart implements TakePictureStart {
  const _$TakePictureStart();

  @override
  String toString() {
    return 'TakePicture()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TakePictureStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String? url) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String? url)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String? url)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TakePictureStart value) $default, {
    required TResult Function(TakePictureSuccessful value) successful,
    required TResult Function(TakePictureError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(TakePictureStart value)? $default, {
    TResult? Function(TakePictureSuccessful value)? successful,
    TResult? Function(TakePictureError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TakePictureStart value)? $default, {
    TResult Function(TakePictureSuccessful value)? successful,
    TResult Function(TakePictureError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class TakePictureStart implements TakePicture {
  const factory TakePictureStart() = _$TakePictureStart;
}

/// @nodoc
abstract class _$$TakePictureSuccessfulCopyWith<$Res> {
  factory _$$TakePictureSuccessfulCopyWith(_$TakePictureSuccessful value,
          $Res Function(_$TakePictureSuccessful) then) =
      __$$TakePictureSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({String? url});
}

/// @nodoc
class __$$TakePictureSuccessfulCopyWithImpl<$Res>
    extends _$TakePictureCopyWithImpl<$Res, _$TakePictureSuccessful>
    implements _$$TakePictureSuccessfulCopyWith<$Res> {
  __$$TakePictureSuccessfulCopyWithImpl(_$TakePictureSuccessful _value,
      $Res Function(_$TakePictureSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$TakePictureSuccessful(
      freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TakePictureSuccessful implements TakePictureSuccessful {
  const _$TakePictureSuccessful(this.url);

  @override
  final String? url;

  @override
  String toString() {
    return 'TakePicture.successful(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TakePictureSuccessful &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TakePictureSuccessfulCopyWith<_$TakePictureSuccessful> get copyWith =>
      __$$TakePictureSuccessfulCopyWithImpl<_$TakePictureSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String? url) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String? url)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String? url)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TakePictureStart value) $default, {
    required TResult Function(TakePictureSuccessful value) successful,
    required TResult Function(TakePictureError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(TakePictureStart value)? $default, {
    TResult? Function(TakePictureSuccessful value)? successful,
    TResult? Function(TakePictureError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TakePictureStart value)? $default, {
    TResult Function(TakePictureSuccessful value)? successful,
    TResult Function(TakePictureError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class TakePictureSuccessful implements TakePicture {
  const factory TakePictureSuccessful(final String? url) =
      _$TakePictureSuccessful;

  String? get url;
  @JsonKey(ignore: true)
  _$$TakePictureSuccessfulCopyWith<_$TakePictureSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TakePictureErrorCopyWith<$Res> {
  factory _$$TakePictureErrorCopyWith(
          _$TakePictureError value, $Res Function(_$TakePictureError) then) =
      __$$TakePictureErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$TakePictureErrorCopyWithImpl<$Res>
    extends _$TakePictureCopyWithImpl<$Res, _$TakePictureError>
    implements _$$TakePictureErrorCopyWith<$Res> {
  __$$TakePictureErrorCopyWithImpl(
      _$TakePictureError _value, $Res Function(_$TakePictureError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$TakePictureError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$TakePictureError implements TakePictureError {
  const _$TakePictureError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'TakePicture.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TakePictureError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TakePictureErrorCopyWith<_$TakePictureError> get copyWith =>
      __$$TakePictureErrorCopyWithImpl<_$TakePictureError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String? url) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String? url)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String? url)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TakePictureStart value) $default, {
    required TResult Function(TakePictureSuccessful value) successful,
    required TResult Function(TakePictureError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(TakePictureStart value)? $default, {
    TResult? Function(TakePictureSuccessful value)? successful,
    TResult? Function(TakePictureError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TakePictureStart value)? $default, {
    TResult Function(TakePictureSuccessful value)? successful,
    TResult Function(TakePictureError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TakePictureError implements TakePicture {
  const factory TakePictureError(
      final Object error, final StackTrace stackTrace) = _$TakePictureError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$TakePictureErrorCopyWith<_$TakePictureError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UploadPicture {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(File picture) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(File picture)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(File picture)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UploadPictureStart value) $default, {
    required TResult Function(UploadPictureSuccessful value) successful,
    required TResult Function(UploadPictureError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UploadPictureStart value)? $default, {
    TResult? Function(UploadPictureSuccessful value)? successful,
    TResult? Function(UploadPictureError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UploadPictureStart value)? $default, {
    TResult Function(UploadPictureSuccessful value)? successful,
    TResult Function(UploadPictureError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadPictureCopyWith<$Res> {
  factory $UploadPictureCopyWith(
          UploadPicture value, $Res Function(UploadPicture) then) =
      _$UploadPictureCopyWithImpl<$Res, UploadPicture>;
}

/// @nodoc
class _$UploadPictureCopyWithImpl<$Res, $Val extends UploadPicture>
    implements $UploadPictureCopyWith<$Res> {
  _$UploadPictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UploadPictureStartCopyWith<$Res> {
  factory _$$UploadPictureStartCopyWith(_$UploadPictureStart value,
          $Res Function(_$UploadPictureStart) then) =
      __$$UploadPictureStartCopyWithImpl<$Res>;
  @useResult
  $Res call({File picture});
}

/// @nodoc
class __$$UploadPictureStartCopyWithImpl<$Res>
    extends _$UploadPictureCopyWithImpl<$Res, _$UploadPictureStart>
    implements _$$UploadPictureStartCopyWith<$Res> {
  __$$UploadPictureStartCopyWithImpl(
      _$UploadPictureStart _value, $Res Function(_$UploadPictureStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? picture = null,
  }) {
    return _then(_$UploadPictureStart(
      null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$UploadPictureStart implements UploadPictureStart {
  const _$UploadPictureStart(this.picture);

  @override
  final File picture;

  @override
  String toString() {
    return 'UploadPicture(picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadPictureStart &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @override
  int get hashCode => Object.hash(runtimeType, picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadPictureStartCopyWith<_$UploadPictureStart> get copyWith =>
      __$$UploadPictureStartCopyWithImpl<_$UploadPictureStart>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(File picture) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(picture);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(File picture)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(picture);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(File picture)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(picture);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UploadPictureStart value) $default, {
    required TResult Function(UploadPictureSuccessful value) successful,
    required TResult Function(UploadPictureError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UploadPictureStart value)? $default, {
    TResult? Function(UploadPictureSuccessful value)? successful,
    TResult? Function(UploadPictureError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UploadPictureStart value)? $default, {
    TResult Function(UploadPictureSuccessful value)? successful,
    TResult Function(UploadPictureError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UploadPictureStart implements UploadPicture {
  const factory UploadPictureStart(final File picture) = _$UploadPictureStart;

  File get picture;
  @JsonKey(ignore: true)
  _$$UploadPictureStartCopyWith<_$UploadPictureStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadPictureSuccessfulCopyWith<$Res> {
  factory _$$UploadPictureSuccessfulCopyWith(_$UploadPictureSuccessful value,
          $Res Function(_$UploadPictureSuccessful) then) =
      __$$UploadPictureSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadPictureSuccessfulCopyWithImpl<$Res>
    extends _$UploadPictureCopyWithImpl<$Res, _$UploadPictureSuccessful>
    implements _$$UploadPictureSuccessfulCopyWith<$Res> {
  __$$UploadPictureSuccessfulCopyWithImpl(_$UploadPictureSuccessful _value,
      $Res Function(_$UploadPictureSuccessful) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UploadPictureSuccessful implements UploadPictureSuccessful {
  const _$UploadPictureSuccessful();

  @override
  String toString() {
    return 'UploadPicture.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadPictureSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(File picture) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(File picture)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(File picture)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UploadPictureStart value) $default, {
    required TResult Function(UploadPictureSuccessful value) successful,
    required TResult Function(UploadPictureError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UploadPictureStart value)? $default, {
    TResult? Function(UploadPictureSuccessful value)? successful,
    TResult? Function(UploadPictureError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UploadPictureStart value)? $default, {
    TResult Function(UploadPictureSuccessful value)? successful,
    TResult Function(UploadPictureError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UploadPictureSuccessful implements UploadPicture {
  const factory UploadPictureSuccessful() = _$UploadPictureSuccessful;
}

/// @nodoc
abstract class _$$UploadPictureErrorCopyWith<$Res> {
  factory _$$UploadPictureErrorCopyWith(_$UploadPictureError value,
          $Res Function(_$UploadPictureError) then) =
      __$$UploadPictureErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$UploadPictureErrorCopyWithImpl<$Res>
    extends _$UploadPictureCopyWithImpl<$Res, _$UploadPictureError>
    implements _$$UploadPictureErrorCopyWith<$Res> {
  __$$UploadPictureErrorCopyWithImpl(
      _$UploadPictureError _value, $Res Function(_$UploadPictureError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$UploadPictureError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$UploadPictureError implements UploadPictureError {
  const _$UploadPictureError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UploadPicture.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadPictureError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadPictureErrorCopyWith<_$UploadPictureError> get copyWith =>
      __$$UploadPictureErrorCopyWithImpl<_$UploadPictureError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(File picture) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(File picture)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(File picture)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UploadPictureStart value) $default, {
    required TResult Function(UploadPictureSuccessful value) successful,
    required TResult Function(UploadPictureError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UploadPictureStart value)? $default, {
    TResult? Function(UploadPictureSuccessful value)? successful,
    TResult? Function(UploadPictureError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UploadPictureStart value)? $default, {
    TResult Function(UploadPictureSuccessful value)? successful,
    TResult Function(UploadPictureError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UploadPictureError implements UploadPicture {
  const factory UploadPictureError(
      final Object error, final StackTrace stackTrace) = _$UploadPictureError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$UploadPictureErrorCopyWith<_$UploadPictureError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostDanger {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Danger danger, ActionResponse response) $default, {
    required TResult Function(Danger danger) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Danger danger, ActionResponse response)? $default, {
    TResult? Function(Danger danger)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Danger danger, ActionResponse response)? $default, {
    TResult Function(Danger danger)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PostDangerStart value) $default, {
    required TResult Function(PostDangerSuccessful value) successful,
    required TResult Function(PostDangerError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(PostDangerStart value)? $default, {
    TResult? Function(PostDangerSuccessful value)? successful,
    TResult? Function(PostDangerError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PostDangerStart value)? $default, {
    TResult Function(PostDangerSuccessful value)? successful,
    TResult Function(PostDangerError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDangerCopyWith<$Res> {
  factory $PostDangerCopyWith(
          PostDanger value, $Res Function(PostDanger) then) =
      _$PostDangerCopyWithImpl<$Res, PostDanger>;
}

/// @nodoc
class _$PostDangerCopyWithImpl<$Res, $Val extends PostDanger>
    implements $PostDangerCopyWith<$Res> {
  _$PostDangerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PostDangerStartCopyWith<$Res> {
  factory _$$PostDangerStartCopyWith(
          _$PostDangerStart value, $Res Function(_$PostDangerStart) then) =
      __$$PostDangerStartCopyWithImpl<$Res>;
  @useResult
  $Res call({Danger danger, ActionResponse response});

  $DangerCopyWith<$Res> get danger;
}

/// @nodoc
class __$$PostDangerStartCopyWithImpl<$Res>
    extends _$PostDangerCopyWithImpl<$Res, _$PostDangerStart>
    implements _$$PostDangerStartCopyWith<$Res> {
  __$$PostDangerStartCopyWithImpl(
      _$PostDangerStart _value, $Res Function(_$PostDangerStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? danger = null,
    Object? response = null,
  }) {
    return _then(_$PostDangerStart(
      null == danger
          ? _value.danger
          : danger // ignore: cast_nullable_to_non_nullable
              as Danger,
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ActionResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DangerCopyWith<$Res> get danger {
    return $DangerCopyWith<$Res>(_value.danger, (value) {
      return _then(_value.copyWith(danger: value));
    });
  }
}

/// @nodoc

class _$PostDangerStart implements PostDangerStart {
  const _$PostDangerStart(this.danger, this.response);

  @override
  final Danger danger;
  @override
  final ActionResponse response;

  @override
  String toString() {
    return 'PostDanger(danger: $danger, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDangerStart &&
            (identical(other.danger, danger) || other.danger == danger) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, danger, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDangerStartCopyWith<_$PostDangerStart> get copyWith =>
      __$$PostDangerStartCopyWithImpl<_$PostDangerStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Danger danger, ActionResponse response) $default, {
    required TResult Function(Danger danger) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(danger, response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Danger danger, ActionResponse response)? $default, {
    TResult? Function(Danger danger)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(danger, response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Danger danger, ActionResponse response)? $default, {
    TResult Function(Danger danger)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(danger, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PostDangerStart value) $default, {
    required TResult Function(PostDangerSuccessful value) successful,
    required TResult Function(PostDangerError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(PostDangerStart value)? $default, {
    TResult? Function(PostDangerSuccessful value)? successful,
    TResult? Function(PostDangerError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PostDangerStart value)? $default, {
    TResult Function(PostDangerSuccessful value)? successful,
    TResult Function(PostDangerError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class PostDangerStart implements PostDanger {
  const factory PostDangerStart(
      final Danger danger, final ActionResponse response) = _$PostDangerStart;

  Danger get danger;
  ActionResponse get response;
  @JsonKey(ignore: true)
  _$$PostDangerStartCopyWith<_$PostDangerStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostDangerSuccessfulCopyWith<$Res> {
  factory _$$PostDangerSuccessfulCopyWith(_$PostDangerSuccessful value,
          $Res Function(_$PostDangerSuccessful) then) =
      __$$PostDangerSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({Danger danger});

  $DangerCopyWith<$Res> get danger;
}

/// @nodoc
class __$$PostDangerSuccessfulCopyWithImpl<$Res>
    extends _$PostDangerCopyWithImpl<$Res, _$PostDangerSuccessful>
    implements _$$PostDangerSuccessfulCopyWith<$Res> {
  __$$PostDangerSuccessfulCopyWithImpl(_$PostDangerSuccessful _value,
      $Res Function(_$PostDangerSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? danger = null,
  }) {
    return _then(_$PostDangerSuccessful(
      null == danger
          ? _value.danger
          : danger // ignore: cast_nullable_to_non_nullable
              as Danger,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DangerCopyWith<$Res> get danger {
    return $DangerCopyWith<$Res>(_value.danger, (value) {
      return _then(_value.copyWith(danger: value));
    });
  }
}

/// @nodoc

class _$PostDangerSuccessful implements PostDangerSuccessful {
  const _$PostDangerSuccessful(this.danger);

  @override
  final Danger danger;

  @override
  String toString() {
    return 'PostDanger.successful(danger: $danger)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDangerSuccessful &&
            (identical(other.danger, danger) || other.danger == danger));
  }

  @override
  int get hashCode => Object.hash(runtimeType, danger);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDangerSuccessfulCopyWith<_$PostDangerSuccessful> get copyWith =>
      __$$PostDangerSuccessfulCopyWithImpl<_$PostDangerSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Danger danger, ActionResponse response) $default, {
    required TResult Function(Danger danger) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(danger);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Danger danger, ActionResponse response)? $default, {
    TResult? Function(Danger danger)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(danger);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Danger danger, ActionResponse response)? $default, {
    TResult Function(Danger danger)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(danger);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PostDangerStart value) $default, {
    required TResult Function(PostDangerSuccessful value) successful,
    required TResult Function(PostDangerError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(PostDangerStart value)? $default, {
    TResult? Function(PostDangerSuccessful value)? successful,
    TResult? Function(PostDangerError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PostDangerStart value)? $default, {
    TResult Function(PostDangerSuccessful value)? successful,
    TResult Function(PostDangerError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class PostDangerSuccessful implements PostDanger {
  const factory PostDangerSuccessful(final Danger danger) =
      _$PostDangerSuccessful;

  Danger get danger;
  @JsonKey(ignore: true)
  _$$PostDangerSuccessfulCopyWith<_$PostDangerSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostDangerErrorCopyWith<$Res> {
  factory _$$PostDangerErrorCopyWith(
          _$PostDangerError value, $Res Function(_$PostDangerError) then) =
      __$$PostDangerErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$PostDangerErrorCopyWithImpl<$Res>
    extends _$PostDangerCopyWithImpl<$Res, _$PostDangerError>
    implements _$$PostDangerErrorCopyWith<$Res> {
  __$$PostDangerErrorCopyWithImpl(
      _$PostDangerError _value, $Res Function(_$PostDangerError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$PostDangerError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$PostDangerError implements PostDangerError {
  const _$PostDangerError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'PostDanger.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDangerError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDangerErrorCopyWith<_$PostDangerError> get copyWith =>
      __$$PostDangerErrorCopyWithImpl<_$PostDangerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Danger danger, ActionResponse response) $default, {
    required TResult Function(Danger danger) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Danger danger, ActionResponse response)? $default, {
    TResult? Function(Danger danger)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Danger danger, ActionResponse response)? $default, {
    TResult Function(Danger danger)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(PostDangerStart value) $default, {
    required TResult Function(PostDangerSuccessful value) successful,
    required TResult Function(PostDangerError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(PostDangerStart value)? $default, {
    TResult? Function(PostDangerSuccessful value)? successful,
    TResult? Function(PostDangerError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(PostDangerStart value)? $default, {
    TResult Function(PostDangerSuccessful value)? successful,
    TResult Function(PostDangerError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PostDangerError implements PostDanger {
  const factory PostDangerError(
      final Object error, final StackTrace stackTrace) = _$PostDangerError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$PostDangerErrorCopyWith<_$PostDangerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListenForDangers {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) start,
    required TResult Function() done,
    required TResult Function(List<Danger> userDangers) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? start,
    TResult? Function()? done,
    TResult? Function(List<Danger> userDangers)? event,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? start,
    TResult Function()? done,
    TResult Function(List<Danger> userDangers)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForDangersStart value) start,
    required TResult Function(ListenForDangersDone value) done,
    required TResult Function(OnDangerEvent value) event,
    required TResult Function(_ListenForDangersError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListenForDangersStart value)? start,
    TResult? Function(ListenForDangersDone value)? done,
    TResult? Function(OnDangerEvent value)? event,
    TResult? Function(_ListenForDangersError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForDangersStart value)? start,
    TResult Function(ListenForDangersDone value)? done,
    TResult Function(OnDangerEvent value)? event,
    TResult Function(_ListenForDangersError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListenForDangersCopyWith<$Res> {
  factory $ListenForDangersCopyWith(
          ListenForDangers value, $Res Function(ListenForDangers) then) =
      _$ListenForDangersCopyWithImpl<$Res, ListenForDangers>;
}

/// @nodoc
class _$ListenForDangersCopyWithImpl<$Res, $Val extends ListenForDangers>
    implements $ListenForDangersCopyWith<$Res> {
  _$ListenForDangersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ListenForDangersStartCopyWith<$Res> {
  factory _$$ListenForDangersStartCopyWith(_$ListenForDangersStart value,
          $Res Function(_$ListenForDangersStart) then) =
      __$$ListenForDangersStartCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$ListenForDangersStartCopyWithImpl<$Res>
    extends _$ListenForDangersCopyWithImpl<$Res, _$ListenForDangersStart>
    implements _$$ListenForDangersStartCopyWith<$Res> {
  __$$ListenForDangersStartCopyWithImpl(_$ListenForDangersStart _value,
      $Res Function(_$ListenForDangersStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$ListenForDangersStart(
      null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ListenForDangersStart implements ListenForDangersStart {
  const _$ListenForDangersStart(this.uid);

  @override
  final String uid;

  @override
  String toString() {
    return 'ListenForDangers.start(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListenForDangersStart &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListenForDangersStartCopyWith<_$ListenForDangersStart> get copyWith =>
      __$$ListenForDangersStartCopyWithImpl<_$ListenForDangersStart>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) start,
    required TResult Function() done,
    required TResult Function(List<Danger> userDangers) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return start(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? start,
    TResult? Function()? done,
    TResult? Function(List<Danger> userDangers)? event,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return start?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? start,
    TResult Function()? done,
    TResult Function(List<Danger> userDangers)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForDangersStart value) start,
    required TResult Function(ListenForDangersDone value) done,
    required TResult Function(OnDangerEvent value) event,
    required TResult Function(_ListenForDangersError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListenForDangersStart value)? start,
    TResult? Function(ListenForDangersDone value)? done,
    TResult? Function(OnDangerEvent value)? event,
    TResult? Function(_ListenForDangersError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForDangersStart value)? start,
    TResult Function(ListenForDangersDone value)? done,
    TResult Function(OnDangerEvent value)? event,
    TResult Function(_ListenForDangersError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class ListenForDangersStart implements ListenForDangers {
  const factory ListenForDangersStart(final String uid) =
      _$ListenForDangersStart;

  String get uid;
  @JsonKey(ignore: true)
  _$$ListenForDangersStartCopyWith<_$ListenForDangersStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListenForDangersDoneCopyWith<$Res> {
  factory _$$ListenForDangersDoneCopyWith(_$ListenForDangersDone value,
          $Res Function(_$ListenForDangersDone) then) =
      __$$ListenForDangersDoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListenForDangersDoneCopyWithImpl<$Res>
    extends _$ListenForDangersCopyWithImpl<$Res, _$ListenForDangersDone>
    implements _$$ListenForDangersDoneCopyWith<$Res> {
  __$$ListenForDangersDoneCopyWithImpl(_$ListenForDangersDone _value,
      $Res Function(_$ListenForDangersDone) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ListenForDangersDone implements ListenForDangersDone {
  const _$ListenForDangersDone();

  @override
  String toString() {
    return 'ListenForDangers.done()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListenForDangersDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) start,
    required TResult Function() done,
    required TResult Function(List<Danger> userDangers) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return done();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? start,
    TResult? Function()? done,
    TResult? Function(List<Danger> userDangers)? event,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return done?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? start,
    TResult Function()? done,
    TResult Function(List<Danger> userDangers)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForDangersStart value) start,
    required TResult Function(ListenForDangersDone value) done,
    required TResult Function(OnDangerEvent value) event,
    required TResult Function(_ListenForDangersError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListenForDangersStart value)? start,
    TResult? Function(ListenForDangersDone value)? done,
    TResult? Function(OnDangerEvent value)? event,
    TResult? Function(_ListenForDangersError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForDangersStart value)? start,
    TResult Function(ListenForDangersDone value)? done,
    TResult Function(OnDangerEvent value)? event,
    TResult Function(_ListenForDangersError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class ListenForDangersDone implements ListenForDangers {
  const factory ListenForDangersDone() = _$ListenForDangersDone;
}

/// @nodoc
abstract class _$$OnDangerEventCopyWith<$Res> {
  factory _$$OnDangerEventCopyWith(
          _$OnDangerEvent value, $Res Function(_$OnDangerEvent) then) =
      __$$OnDangerEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Danger> userDangers});
}

/// @nodoc
class __$$OnDangerEventCopyWithImpl<$Res>
    extends _$ListenForDangersCopyWithImpl<$Res, _$OnDangerEvent>
    implements _$$OnDangerEventCopyWith<$Res> {
  __$$OnDangerEventCopyWithImpl(
      _$OnDangerEvent _value, $Res Function(_$OnDangerEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDangers = null,
  }) {
    return _then(_$OnDangerEvent(
      null == userDangers
          ? _value._userDangers
          : userDangers // ignore: cast_nullable_to_non_nullable
              as List<Danger>,
    ));
  }
}

/// @nodoc

class _$OnDangerEvent implements OnDangerEvent {
  const _$OnDangerEvent(final List<Danger> userDangers)
      : _userDangers = userDangers;

  final List<Danger> _userDangers;
  @override
  List<Danger> get userDangers {
    if (_userDangers is EqualUnmodifiableListView) return _userDangers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userDangers);
  }

  @override
  String toString() {
    return 'ListenForDangers.event(userDangers: $userDangers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnDangerEvent &&
            const DeepCollectionEquality()
                .equals(other._userDangers, _userDangers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_userDangers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnDangerEventCopyWith<_$OnDangerEvent> get copyWith =>
      __$$OnDangerEventCopyWithImpl<_$OnDangerEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) start,
    required TResult Function() done,
    required TResult Function(List<Danger> userDangers) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return event(userDangers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? start,
    TResult? Function()? done,
    TResult? Function(List<Danger> userDangers)? event,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return event?.call(userDangers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? start,
    TResult Function()? done,
    TResult Function(List<Danger> userDangers)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(userDangers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForDangersStart value) start,
    required TResult Function(ListenForDangersDone value) done,
    required TResult Function(OnDangerEvent value) event,
    required TResult Function(_ListenForDangersError value) error,
  }) {
    return event(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListenForDangersStart value)? start,
    TResult? Function(ListenForDangersDone value)? done,
    TResult? Function(OnDangerEvent value)? event,
    TResult? Function(_ListenForDangersError value)? error,
  }) {
    return event?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForDangersStart value)? start,
    TResult Function(ListenForDangersDone value)? done,
    TResult Function(OnDangerEvent value)? event,
    TResult Function(_ListenForDangersError value)? error,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(this);
    }
    return orElse();
  }
}

abstract class OnDangerEvent implements ListenForDangers {
  const factory OnDangerEvent(final List<Danger> userDangers) = _$OnDangerEvent;

  List<Danger> get userDangers;
  @JsonKey(ignore: true)
  _$$OnDangerEventCopyWith<_$OnDangerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ListenForDangersErrorCopyWith<$Res> {
  factory _$$_ListenForDangersErrorCopyWith(_$_ListenForDangersError value,
          $Res Function(_$_ListenForDangersError) then) =
      __$$_ListenForDangersErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$_ListenForDangersErrorCopyWithImpl<$Res>
    extends _$ListenForDangersCopyWithImpl<$Res, _$_ListenForDangersError>
    implements _$$_ListenForDangersErrorCopyWith<$Res> {
  __$$_ListenForDangersErrorCopyWithImpl(_$_ListenForDangersError _value,
      $Res Function(_$_ListenForDangersError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$_ListenForDangersError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$_ListenForDangersError implements _ListenForDangersError {
  const _$_ListenForDangersError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'ListenForDangers.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListenForDangersError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListenForDangersErrorCopyWith<_$_ListenForDangersError> get copyWith =>
      __$$_ListenForDangersErrorCopyWithImpl<_$_ListenForDangersError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) start,
    required TResult Function() done,
    required TResult Function(List<Danger> userDangers) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? start,
    TResult? Function()? done,
    TResult? Function(List<Danger> userDangers)? event,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? start,
    TResult Function()? done,
    TResult Function(List<Danger> userDangers)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForDangersStart value) start,
    required TResult Function(ListenForDangersDone value) done,
    required TResult Function(OnDangerEvent value) event,
    required TResult Function(_ListenForDangersError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListenForDangersStart value)? start,
    TResult? Function(ListenForDangersDone value)? done,
    TResult? Function(OnDangerEvent value)? event,
    TResult? Function(_ListenForDangersError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForDangersStart value)? start,
    TResult Function(ListenForDangersDone value)? done,
    TResult Function(OnDangerEvent value)? event,
    TResult Function(_ListenForDangersError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ListenForDangersError implements ListenForDangers {
  const factory _ListenForDangersError(
          final Object error, final StackTrace stackTrace) =
      _$_ListenForDangersError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$_ListenForDangersErrorCopyWith<_$_ListenForDangersError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetPoints {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid) $default, {
    required TResult Function(int points) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String uid)? $default, {
    TResult? Function(int points)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(int points)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPointsStart value) $default, {
    required TResult Function(GetPointsSuccessful value) successful,
    required TResult Function(GetPointsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPointsStart value)? $default, {
    TResult? Function(GetPointsSuccessful value)? successful,
    TResult? Function(GetPointsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPointsStart value)? $default, {
    TResult Function(GetPointsSuccessful value)? successful,
    TResult Function(GetPointsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPointsCopyWith<$Res> {
  factory $GetPointsCopyWith(GetPoints value, $Res Function(GetPoints) then) =
      _$GetPointsCopyWithImpl<$Res, GetPoints>;
}

/// @nodoc
class _$GetPointsCopyWithImpl<$Res, $Val extends GetPoints>
    implements $GetPointsCopyWith<$Res> {
  _$GetPointsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPointsStartCopyWith<$Res> {
  factory _$$GetPointsStartCopyWith(
          _$GetPointsStart value, $Res Function(_$GetPointsStart) then) =
      __$$GetPointsStartCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$GetPointsStartCopyWithImpl<$Res>
    extends _$GetPointsCopyWithImpl<$Res, _$GetPointsStart>
    implements _$$GetPointsStartCopyWith<$Res> {
  __$$GetPointsStartCopyWithImpl(
      _$GetPointsStart _value, $Res Function(_$GetPointsStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$GetPointsStart(
      null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPointsStart implements GetPointsStart {
  const _$GetPointsStart(this.uid);

  @override
  final String uid;

  @override
  String toString() {
    return 'GetPoints(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPointsStart &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPointsStartCopyWith<_$GetPointsStart> get copyWith =>
      __$$GetPointsStartCopyWithImpl<_$GetPointsStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid) $default, {
    required TResult Function(int points) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String uid)? $default, {
    TResult? Function(int points)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(int points)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPointsStart value) $default, {
    required TResult Function(GetPointsSuccessful value) successful,
    required TResult Function(GetPointsError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPointsStart value)? $default, {
    TResult? Function(GetPointsSuccessful value)? successful,
    TResult? Function(GetPointsError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPointsStart value)? $default, {
    TResult Function(GetPointsSuccessful value)? successful,
    TResult Function(GetPointsError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetPointsStart implements GetPoints {
  const factory GetPointsStart(final String uid) = _$GetPointsStart;

  String get uid;
  @JsonKey(ignore: true)
  _$$GetPointsStartCopyWith<_$GetPointsStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPointsSuccessfulCopyWith<$Res> {
  factory _$$GetPointsSuccessfulCopyWith(_$GetPointsSuccessful value,
          $Res Function(_$GetPointsSuccessful) then) =
      __$$GetPointsSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({int points});
}

/// @nodoc
class __$$GetPointsSuccessfulCopyWithImpl<$Res>
    extends _$GetPointsCopyWithImpl<$Res, _$GetPointsSuccessful>
    implements _$$GetPointsSuccessfulCopyWith<$Res> {
  __$$GetPointsSuccessfulCopyWithImpl(
      _$GetPointsSuccessful _value, $Res Function(_$GetPointsSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
  }) {
    return _then(_$GetPointsSuccessful(
      null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetPointsSuccessful implements GetPointsSuccessful {
  const _$GetPointsSuccessful(this.points);

  @override
  final int points;

  @override
  String toString() {
    return 'GetPoints.successful(points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPointsSuccessful &&
            (identical(other.points, points) || other.points == points));
  }

  @override
  int get hashCode => Object.hash(runtimeType, points);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPointsSuccessfulCopyWith<_$GetPointsSuccessful> get copyWith =>
      __$$GetPointsSuccessfulCopyWithImpl<_$GetPointsSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid) $default, {
    required TResult Function(int points) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(points);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String uid)? $default, {
    TResult? Function(int points)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(points);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(int points)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(points);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPointsStart value) $default, {
    required TResult Function(GetPointsSuccessful value) successful,
    required TResult Function(GetPointsError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPointsStart value)? $default, {
    TResult? Function(GetPointsSuccessful value)? successful,
    TResult? Function(GetPointsError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPointsStart value)? $default, {
    TResult Function(GetPointsSuccessful value)? successful,
    TResult Function(GetPointsError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetPointsSuccessful implements GetPoints {
  const factory GetPointsSuccessful(final int points) = _$GetPointsSuccessful;

  int get points;
  @JsonKey(ignore: true)
  _$$GetPointsSuccessfulCopyWith<_$GetPointsSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPointsErrorCopyWith<$Res> {
  factory _$$GetPointsErrorCopyWith(
          _$GetPointsError value, $Res Function(_$GetPointsError) then) =
      __$$GetPointsErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetPointsErrorCopyWithImpl<$Res>
    extends _$GetPointsCopyWithImpl<$Res, _$GetPointsError>
    implements _$$GetPointsErrorCopyWith<$Res> {
  __$$GetPointsErrorCopyWithImpl(
      _$GetPointsError _value, $Res Function(_$GetPointsError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetPointsError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetPointsError implements GetPointsError {
  const _$GetPointsError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetPoints.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPointsError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPointsErrorCopyWith<_$GetPointsError> get copyWith =>
      __$$GetPointsErrorCopyWithImpl<_$GetPointsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid) $default, {
    required TResult Function(int points) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String uid)? $default, {
    TResult? Function(int points)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(int points)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPointsStart value) $default, {
    required TResult Function(GetPointsSuccessful value) successful,
    required TResult Function(GetPointsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPointsStart value)? $default, {
    TResult? Function(GetPointsSuccessful value)? successful,
    TResult? Function(GetPointsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPointsStart value)? $default, {
    TResult Function(GetPointsSuccessful value)? successful,
    TResult Function(GetPointsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetPointsError implements GetPoints {
  const factory GetPointsError(
      final Object error, final StackTrace stackTrace) = _$GetPointsError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetPointsErrorCopyWith<_$GetPointsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UploadProfilePicture {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid) $default, {
    required TResult Function(String? url) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String uid)? $default, {
    TResult? Function(String? url)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(String? url)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UploadProfilePictureStart value) $default, {
    required TResult Function(UploadProfilePictureSuccessful value) successful,
    required TResult Function(UploadProfilePictureError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UploadProfilePictureStart value)? $default, {
    TResult? Function(UploadProfilePictureSuccessful value)? successful,
    TResult? Function(UploadProfilePictureError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UploadProfilePictureStart value)? $default, {
    TResult Function(UploadProfilePictureSuccessful value)? successful,
    TResult Function(UploadProfilePictureError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadProfilePictureCopyWith<$Res> {
  factory $UploadProfilePictureCopyWith(UploadProfilePicture value,
          $Res Function(UploadProfilePicture) then) =
      _$UploadProfilePictureCopyWithImpl<$Res, UploadProfilePicture>;
}

/// @nodoc
class _$UploadProfilePictureCopyWithImpl<$Res,
        $Val extends UploadProfilePicture>
    implements $UploadProfilePictureCopyWith<$Res> {
  _$UploadProfilePictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UploadProfilePictureStartCopyWith<$Res> {
  factory _$$UploadProfilePictureStartCopyWith(
          _$UploadProfilePictureStart value,
          $Res Function(_$UploadProfilePictureStart) then) =
      __$$UploadProfilePictureStartCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$UploadProfilePictureStartCopyWithImpl<$Res>
    extends _$UploadProfilePictureCopyWithImpl<$Res,
        _$UploadProfilePictureStart>
    implements _$$UploadProfilePictureStartCopyWith<$Res> {
  __$$UploadProfilePictureStartCopyWithImpl(_$UploadProfilePictureStart _value,
      $Res Function(_$UploadProfilePictureStart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$UploadProfilePictureStart(
      null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadProfilePictureStart implements UploadProfilePictureStart {
  const _$UploadProfilePictureStart(this.uid);

  @override
  final String uid;

  @override
  String toString() {
    return 'UploadProfilePicture(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadProfilePictureStart &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadProfilePictureStartCopyWith<_$UploadProfilePictureStart>
      get copyWith => __$$UploadProfilePictureStartCopyWithImpl<
          _$UploadProfilePictureStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid) $default, {
    required TResult Function(String? url) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String uid)? $default, {
    TResult? Function(String? url)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(String? url)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UploadProfilePictureStart value) $default, {
    required TResult Function(UploadProfilePictureSuccessful value) successful,
    required TResult Function(UploadProfilePictureError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UploadProfilePictureStart value)? $default, {
    TResult? Function(UploadProfilePictureSuccessful value)? successful,
    TResult? Function(UploadProfilePictureError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UploadProfilePictureStart value)? $default, {
    TResult Function(UploadProfilePictureSuccessful value)? successful,
    TResult Function(UploadProfilePictureError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UploadProfilePictureStart implements UploadProfilePicture {
  const factory UploadProfilePictureStart(final String uid) =
      _$UploadProfilePictureStart;

  String get uid;
  @JsonKey(ignore: true)
  _$$UploadProfilePictureStartCopyWith<_$UploadProfilePictureStart>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadProfilePictureSuccessfulCopyWith<$Res> {
  factory _$$UploadProfilePictureSuccessfulCopyWith(
          _$UploadProfilePictureSuccessful value,
          $Res Function(_$UploadProfilePictureSuccessful) then) =
      __$$UploadProfilePictureSuccessfulCopyWithImpl<$Res>;
  @useResult
  $Res call({String? url});
}

/// @nodoc
class __$$UploadProfilePictureSuccessfulCopyWithImpl<$Res>
    extends _$UploadProfilePictureCopyWithImpl<$Res,
        _$UploadProfilePictureSuccessful>
    implements _$$UploadProfilePictureSuccessfulCopyWith<$Res> {
  __$$UploadProfilePictureSuccessfulCopyWithImpl(
      _$UploadProfilePictureSuccessful _value,
      $Res Function(_$UploadProfilePictureSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$UploadProfilePictureSuccessful(
      freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UploadProfilePictureSuccessful
    implements UploadProfilePictureSuccessful {
  const _$UploadProfilePictureSuccessful(this.url);

  @override
  final String? url;

  @override
  String toString() {
    return 'UploadProfilePicture.successful(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadProfilePictureSuccessful &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadProfilePictureSuccessfulCopyWith<_$UploadProfilePictureSuccessful>
      get copyWith => __$$UploadProfilePictureSuccessfulCopyWithImpl<
          _$UploadProfilePictureSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid) $default, {
    required TResult Function(String? url) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String uid)? $default, {
    TResult? Function(String? url)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(String? url)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UploadProfilePictureStart value) $default, {
    required TResult Function(UploadProfilePictureSuccessful value) successful,
    required TResult Function(UploadProfilePictureError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UploadProfilePictureStart value)? $default, {
    TResult? Function(UploadProfilePictureSuccessful value)? successful,
    TResult? Function(UploadProfilePictureError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UploadProfilePictureStart value)? $default, {
    TResult Function(UploadProfilePictureSuccessful value)? successful,
    TResult Function(UploadProfilePictureError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UploadProfilePictureSuccessful implements UploadProfilePicture {
  const factory UploadProfilePictureSuccessful(final String? url) =
      _$UploadProfilePictureSuccessful;

  String? get url;
  @JsonKey(ignore: true)
  _$$UploadProfilePictureSuccessfulCopyWith<_$UploadProfilePictureSuccessful>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadProfilePictureErrorCopyWith<$Res> {
  factory _$$UploadProfilePictureErrorCopyWith(
          _$UploadProfilePictureError value,
          $Res Function(_$UploadProfilePictureError) then) =
      __$$UploadProfilePictureErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$UploadProfilePictureErrorCopyWithImpl<$Res>
    extends _$UploadProfilePictureCopyWithImpl<$Res,
        _$UploadProfilePictureError>
    implements _$$UploadProfilePictureErrorCopyWith<$Res> {
  __$$UploadProfilePictureErrorCopyWithImpl(_$UploadProfilePictureError _value,
      $Res Function(_$UploadProfilePictureError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$UploadProfilePictureError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$UploadProfilePictureError implements UploadProfilePictureError {
  const _$UploadProfilePictureError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UploadProfilePicture.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadProfilePictureError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadProfilePictureErrorCopyWith<_$UploadProfilePictureError>
      get copyWith => __$$UploadProfilePictureErrorCopyWithImpl<
          _$UploadProfilePictureError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid) $default, {
    required TResult Function(String? url) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String uid)? $default, {
    TResult? Function(String? url)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(String? url)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UploadProfilePictureStart value) $default, {
    required TResult Function(UploadProfilePictureSuccessful value) successful,
    required TResult Function(UploadProfilePictureError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UploadProfilePictureStart value)? $default, {
    TResult? Function(UploadProfilePictureSuccessful value)? successful,
    TResult? Function(UploadProfilePictureError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UploadProfilePictureStart value)? $default, {
    TResult Function(UploadProfilePictureSuccessful value)? successful,
    TResult Function(UploadProfilePictureError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UploadProfilePictureError implements UploadProfilePicture {
  const factory UploadProfilePictureError(
          final Object error, final StackTrace stackTrace) =
      _$UploadProfilePictureError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$UploadProfilePictureErrorCopyWith<_$UploadProfilePictureError>
      get copyWith => throw _privateConstructorUsedError;
}
