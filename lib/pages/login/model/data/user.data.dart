import 'package:json_annotation/json_annotation.dart';
part 'user.data.g.dart';

@JsonSerializable(explicitToJson: true)
class UserData {
  @JsonKey(name: "access-token")
  String? accessToken;
  String? client;
  String? uid;
  UserData({
    this.accessToken,
    this.client,
    this.uid,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
