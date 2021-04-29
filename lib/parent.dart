import 'package:json_annotation/json_annotation.dart';
import 'data.dart';

part 'parent.g.dart';

@JsonSerializable()
class Parent {
  List<Data> data;
  @JsonKey(name: 'PinCode')
  String pinCode;
  @JsonKey(name: 'Password')
  String password;

  Parent({
    this.data,
    this.pinCode,
    this.password,
  });

  factory Parent.fromJson(Map<String, dynamic> json) => _$ParentFromJson(json);

  Map<String, dynamic> toJson() => _$ParentToJson(this);
}
