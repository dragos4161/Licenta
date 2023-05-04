// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppState$ _$$AppState$FromJson(Map<String, dynamic> json) => _$AppState$(
      auth: json['auth'] == null
          ? const AuthState()
          : AuthState.fromJson(json['auth'] as Map<String, dynamic>),
      danger: json['danger'] == null
          ? const DangerState()
          : DangerState.fromJson(json['danger'] as Map<String, dynamic>),
      userLocation: json['userLocation'] == null
          ? null
          : CurrentLocation.fromJson(
              json['userLocation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppState$ToJson(_$AppState$ instance) =>
    <String, dynamic>{
      'auth': instance.auth,
      'danger': instance.danger,
      'userLocation': instance.userLocation,
    };

_$AuthState$ _$$AuthState$FromJson(Map<String, dynamic> json) => _$AuthState$(
      user: json['user'] == null
          ? null
          : AppUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthState$ToJson(_$AuthState$ instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_$AppUser$ _$$AppUser$FromJson(Map<String, dynamic> json) => _$AppUser$(
      uid: json['uid'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$AppUser$ToJson(_$AppUser$ instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'imageUrl': instance.imageUrl,
    };

_$Danger$ _$$Danger$FromJson(Map<String, dynamic> json) => _$Danger$(
      category: json['category'] as String,
      uid: json['uid'] as String,
      location:
          DangerLocation.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$Danger$ToJson(_$Danger$ instance) => <String, dynamic>{
      'category': instance.category,
      'uid': instance.uid,
      'location': instance.location,
    };

_$DangerLocation$ _$$DangerLocation$FromJson(Map<String, dynamic> json) =>
    _$DangerLocation$(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$DangerLocation$ToJson(_$DangerLocation$ instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$DangerState$ _$$DangerState$FromJson(Map<String, dynamic> json) =>
    _$DangerState$(
      dangers: (json['dangers'] as List<dynamic>?)
              ?.map((e) => Danger.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Danger>[],
      currentLocation: json['currentLocation'] == null
          ? null
          : DangerLocation.fromJson(
              json['currentLocation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DangerState$ToJson(_$DangerState$ instance) =>
    <String, dynamic>{
      'dangers': instance.dangers,
      'currentLocation': instance.currentLocation,
    };

_$CurrentLocation$ _$$CurrentLocation$FromJson(Map<String, dynamic> json) =>
    _$CurrentLocation$(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$CurrentLocation$ToJson(_$CurrentLocation$ instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
