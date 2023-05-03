// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of models;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState$.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  AuthState get auth => throw _privateConstructorUsedError;
  DangerState get danger => throw _privateConstructorUsedError;
  DangerLocation? get currentLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {AuthState auth, DangerState danger, DangerLocation? currentLocation});

  $AuthStateCopyWith<$Res> get auth;
  $DangerStateCopyWith<$Res> get danger;
  $DangerLocationCopyWith<$Res>? get currentLocation;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? danger = null,
    Object? currentLocation = freezed,
  }) {
    return _then(_value.copyWith(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as AuthState,
      danger: null == danger
          ? _value.danger
          : danger // ignore: cast_nullable_to_non_nullable
              as DangerState,
      currentLocation: freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as DangerLocation?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthStateCopyWith<$Res> get auth {
    return $AuthStateCopyWith<$Res>(_value.auth, (value) {
      return _then(_value.copyWith(auth: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DangerStateCopyWith<$Res> get danger {
    return $DangerStateCopyWith<$Res>(_value.danger, (value) {
      return _then(_value.copyWith(danger: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DangerLocationCopyWith<$Res>? get currentLocation {
    if (_value.currentLocation == null) {
      return null;
    }

    return $DangerLocationCopyWith<$Res>(_value.currentLocation!, (value) {
      return _then(_value.copyWith(currentLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppState$CopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$AppState$CopyWith(
          _$AppState$ value, $Res Function(_$AppState$) then) =
      __$$AppState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthState auth, DangerState danger, DangerLocation? currentLocation});

  @override
  $AuthStateCopyWith<$Res> get auth;
  @override
  $DangerStateCopyWith<$Res> get danger;
  @override
  $DangerLocationCopyWith<$Res>? get currentLocation;
}

/// @nodoc
class __$$AppState$CopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppState$>
    implements _$$AppState$CopyWith<$Res> {
  __$$AppState$CopyWithImpl(
      _$AppState$ _value, $Res Function(_$AppState$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? danger = null,
    Object? currentLocation = freezed,
  }) {
    return _then(_$AppState$(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as AuthState,
      danger: null == danger
          ? _value.danger
          : danger // ignore: cast_nullable_to_non_nullable
              as DangerState,
      currentLocation: freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as DangerLocation?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$ implements AppState$ {
  const _$AppState$(
      {this.auth = const AuthState(),
      this.danger = const DangerState(),
      this.currentLocation});

  factory _$AppState$.fromJson(Map<String, dynamic> json) =>
      _$$AppState$FromJson(json);

  @override
  @JsonKey()
  final AuthState auth;
  @override
  @JsonKey()
  final DangerState danger;
  @override
  final DangerLocation? currentLocation;

  @override
  String toString() {
    return 'AppState(auth: $auth, danger: $danger, currentLocation: $currentLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppState$ &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.danger, danger) || other.danger == danger) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, auth, danger, currentLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppState$CopyWith<_$AppState$> get copyWith =>
      __$$AppState$CopyWithImpl<_$AppState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppState$ToJson(
      this,
    );
  }
}

abstract class AppState$ implements AppState {
  const factory AppState$(
      {final AuthState auth,
      final DangerState danger,
      final DangerLocation? currentLocation}) = _$AppState$;

  factory AppState$.fromJson(Map<String, dynamic> json) = _$AppState$.fromJson;

  @override
  AuthState get auth;
  @override
  DangerState get danger;
  @override
  DangerLocation? get currentLocation;
  @override
  @JsonKey(ignore: true)
  _$$AppState$CopyWith<_$AppState$> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  return AuthState$.fromJson(json);
}

/// @nodoc
mixin _$AuthState {
  AppUser? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({AppUser? user});

  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthState$CopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$AuthState$CopyWith(
          _$AuthState$ value, $Res Function(_$AuthState$) then) =
      __$$AuthState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppUser? user});

  @override
  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthState$CopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthState$>
    implements _$$AuthState$CopyWith<$Res> {
  __$$AuthState$CopyWithImpl(
      _$AuthState$ _value, $Res Function(_$AuthState$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$AuthState$(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthState$ implements AuthState$ {
  const _$AuthState$({this.user});

  factory _$AuthState$.fromJson(Map<String, dynamic> json) =>
      _$$AuthState$FromJson(json);

  @override
  final AppUser? user;

  @override
  String toString() {
    return 'AuthState(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthState$ &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthState$CopyWith<_$AuthState$> get copyWith =>
      __$$AuthState$CopyWithImpl<_$AuthState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthState$ToJson(
      this,
    );
  }
}

abstract class AuthState$ implements AuthState {
  const factory AuthState$({final AppUser? user}) = _$AuthState$;

  factory AuthState$.fromJson(Map<String, dynamic> json) =
      _$AuthState$.fromJson;

  @override
  AppUser? get user;
  @override
  @JsonKey(ignore: true)
  _$$AuthState$CopyWith<_$AuthState$> get copyWith =>
      throw _privateConstructorUsedError;
}

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return AppUser$.fromJson(json);
}

/// @nodoc
mixin _$AppUser {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res, AppUser>;
  @useResult
  $Res call({String uid, String email, String? displayName, String? imageUrl});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res, $Val extends AppUser>
    implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? displayName = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppUser$CopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$$AppUser$CopyWith(
          _$AppUser$ value, $Res Function(_$AppUser$) then) =
      __$$AppUser$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String email, String? displayName, String? imageUrl});
}

/// @nodoc
class __$$AppUser$CopyWithImpl<$Res>
    extends _$AppUserCopyWithImpl<$Res, _$AppUser$>
    implements _$$AppUser$CopyWith<$Res> {
  __$$AppUser$CopyWithImpl(_$AppUser$ _value, $Res Function(_$AppUser$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? displayName = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$AppUser$(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppUser$ implements AppUser$ {
  const _$AppUser$(
      {required this.uid,
      required this.email,
      this.displayName,
      this.imageUrl});

  factory _$AppUser$.fromJson(Map<String, dynamic> json) =>
      _$$AppUser$FromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String? displayName;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'AppUser(uid: $uid, email: $email, displayName: $displayName, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUser$ &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, email, displayName, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUser$CopyWith<_$AppUser$> get copyWith =>
      __$$AppUser$CopyWithImpl<_$AppUser$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUser$ToJson(
      this,
    );
  }
}

abstract class AppUser$ implements AppUser {
  const factory AppUser$(
      {required final String uid,
      required final String email,
      final String? displayName,
      final String? imageUrl}) = _$AppUser$;

  factory AppUser$.fromJson(Map<String, dynamic> json) = _$AppUser$.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String? get displayName;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$AppUser$CopyWith<_$AppUser$> get copyWith =>
      throw _privateConstructorUsedError;
}

Danger _$DangerFromJson(Map<String, dynamic> json) {
  return Danger$.fromJson(json);
}

/// @nodoc
mixin _$Danger {
  String get category => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  DangerLocation get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DangerCopyWith<Danger> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DangerCopyWith<$Res> {
  factory $DangerCopyWith(Danger value, $Res Function(Danger) then) =
      _$DangerCopyWithImpl<$Res, Danger>;
  @useResult
  $Res call({String category, String uid, DangerLocation location});

  $DangerLocationCopyWith<$Res> get location;
}

/// @nodoc
class _$DangerCopyWithImpl<$Res, $Val extends Danger>
    implements $DangerCopyWith<$Res> {
  _$DangerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? uid = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as DangerLocation,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DangerLocationCopyWith<$Res> get location {
    return $DangerLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$Danger$CopyWith<$Res> implements $DangerCopyWith<$Res> {
  factory _$$Danger$CopyWith(_$Danger$ value, $Res Function(_$Danger$) then) =
      __$$Danger$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String category, String uid, DangerLocation location});

  @override
  $DangerLocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$Danger$CopyWithImpl<$Res>
    extends _$DangerCopyWithImpl<$Res, _$Danger$>
    implements _$$Danger$CopyWith<$Res> {
  __$$Danger$CopyWithImpl(_$Danger$ _value, $Res Function(_$Danger$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? uid = null,
    Object? location = null,
  }) {
    return _then(_$Danger$(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as DangerLocation,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Danger$ implements Danger$ {
  const _$Danger$(
      {required this.category, required this.uid, required this.location});

  factory _$Danger$.fromJson(Map<String, dynamic> json) =>
      _$$Danger$FromJson(json);

  @override
  final String category;
  @override
  final String uid;
  @override
  final DangerLocation location;

  @override
  String toString() {
    return 'Danger(category: $category, uid: $uid, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Danger$ &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, category, uid, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Danger$CopyWith<_$Danger$> get copyWith =>
      __$$Danger$CopyWithImpl<_$Danger$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Danger$ToJson(
      this,
    );
  }
}

abstract class Danger$ implements Danger {
  const factory Danger$(
      {required final String category,
      required final String uid,
      required final DangerLocation location}) = _$Danger$;

  factory Danger$.fromJson(Map<String, dynamic> json) = _$Danger$.fromJson;

  @override
  String get category;
  @override
  String get uid;
  @override
  DangerLocation get location;
  @override
  @JsonKey(ignore: true)
  _$$Danger$CopyWith<_$Danger$> get copyWith =>
      throw _privateConstructorUsedError;
}

DangerLocation _$DangerLocationFromJson(Map<String, dynamic> json) {
  return DangerLocation$.fromJson(json);
}

/// @nodoc
mixin _$DangerLocation {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DangerLocationCopyWith<DangerLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DangerLocationCopyWith<$Res> {
  factory $DangerLocationCopyWith(
          DangerLocation value, $Res Function(DangerLocation) then) =
      _$DangerLocationCopyWithImpl<$Res, DangerLocation>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$DangerLocationCopyWithImpl<$Res, $Val extends DangerLocation>
    implements $DangerLocationCopyWith<$Res> {
  _$DangerLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DangerLocation$CopyWith<$Res>
    implements $DangerLocationCopyWith<$Res> {
  factory _$$DangerLocation$CopyWith(
          _$DangerLocation$ value, $Res Function(_$DangerLocation$) then) =
      __$$DangerLocation$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$DangerLocation$CopyWithImpl<$Res>
    extends _$DangerLocationCopyWithImpl<$Res, _$DangerLocation$>
    implements _$$DangerLocation$CopyWith<$Res> {
  __$$DangerLocation$CopyWithImpl(
      _$DangerLocation$ _value, $Res Function(_$DangerLocation$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$DangerLocation$(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DangerLocation$ implements DangerLocation$ {
  const _$DangerLocation$({required this.latitude, required this.longitude});

  factory _$DangerLocation$.fromJson(Map<String, dynamic> json) =>
      _$$DangerLocation$FromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'DangerLocation(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DangerLocation$ &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DangerLocation$CopyWith<_$DangerLocation$> get copyWith =>
      __$$DangerLocation$CopyWithImpl<_$DangerLocation$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DangerLocation$ToJson(
      this,
    );
  }
}

abstract class DangerLocation$ implements DangerLocation {
  const factory DangerLocation$(
      {required final double latitude,
      required final double longitude}) = _$DangerLocation$;

  factory DangerLocation$.fromJson(Map<String, dynamic> json) =
      _$DangerLocation$.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$DangerLocation$CopyWith<_$DangerLocation$> get copyWith =>
      throw _privateConstructorUsedError;
}

DangerState _$DangerStateFromJson(Map<String, dynamic> json) {
  return DangerState$.fromJson(json);
}

/// @nodoc
mixin _$DangerState {
  List<Danger> get dangers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DangerStateCopyWith<DangerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DangerStateCopyWith<$Res> {
  factory $DangerStateCopyWith(
          DangerState value, $Res Function(DangerState) then) =
      _$DangerStateCopyWithImpl<$Res, DangerState>;
  @useResult
  $Res call({List<Danger> dangers});
}

/// @nodoc
class _$DangerStateCopyWithImpl<$Res, $Val extends DangerState>
    implements $DangerStateCopyWith<$Res> {
  _$DangerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dangers = null,
  }) {
    return _then(_value.copyWith(
      dangers: null == dangers
          ? _value.dangers
          : dangers // ignore: cast_nullable_to_non_nullable
              as List<Danger>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DangerState$CopyWith<$Res>
    implements $DangerStateCopyWith<$Res> {
  factory _$$DangerState$CopyWith(
          _$DangerState$ value, $Res Function(_$DangerState$) then) =
      __$$DangerState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Danger> dangers});
}

/// @nodoc
class __$$DangerState$CopyWithImpl<$Res>
    extends _$DangerStateCopyWithImpl<$Res, _$DangerState$>
    implements _$$DangerState$CopyWith<$Res> {
  __$$DangerState$CopyWithImpl(
      _$DangerState$ _value, $Res Function(_$DangerState$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dangers = null,
  }) {
    return _then(_$DangerState$(
      dangers: null == dangers
          ? _value._dangers
          : dangers // ignore: cast_nullable_to_non_nullable
              as List<Danger>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DangerState$ implements DangerState$ {
  const _$DangerState$({final List<Danger> dangers = const <Danger>[]})
      : _dangers = dangers;

  factory _$DangerState$.fromJson(Map<String, dynamic> json) =>
      _$$DangerState$FromJson(json);

  final List<Danger> _dangers;
  @override
  @JsonKey()
  List<Danger> get dangers {
    if (_dangers is EqualUnmodifiableListView) return _dangers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dangers);
  }

  @override
  String toString() {
    return 'DangerState(dangers: $dangers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DangerState$ &&
            const DeepCollectionEquality().equals(other._dangers, _dangers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_dangers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DangerState$CopyWith<_$DangerState$> get copyWith =>
      __$$DangerState$CopyWithImpl<_$DangerState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DangerState$ToJson(
      this,
    );
  }
}

abstract class DangerState$ implements DangerState {
  const factory DangerState$({final List<Danger> dangers}) = _$DangerState$;

  factory DangerState$.fromJson(Map<String, dynamic> json) =
      _$DangerState$.fromJson;

  @override
  List<Danger> get dangers;
  @override
  @JsonKey(ignore: true)
  _$$DangerState$CopyWith<_$DangerState$> get copyWith =>
      throw _privateConstructorUsedError;
}
