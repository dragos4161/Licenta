part of models;

@freezed
class Danger with _$Danger {
  const factory Danger({
    required String category,
    required String uid,
    required CurrentLocation location,
    String? image,
    @Default('submitted') String status,
  }) = Danger$;

  factory Danger.fromJson(Map<dynamic, dynamic> json) => _$DangerFromJson(Map<String, dynamic>.from(json));

  factory Danger.fromSnapshot(DocumentSnapshot<Map<String,dynamic>> document){
    final Map<String, dynamic> data = document.data()!;
    final CurrentLocation loc = CurrentLocation(latitude: double.parse(data['latitude'].toString()),longitude: double.parse(data['longitude'].toString()));

    return Danger(category: data['category'].toString(), uid: data['uid'].toString(), location: loc,image: data['image'].toString(), status: data['status'].toString());
  }
}
