// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Parent _$ParentFromJson(Map<String, dynamic> json) {
  return Parent(
    data: (json['data'] as List)
        ?.map(
            (e) => e == null ? null : Data.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    pinCode: json['PinCode'] as String,
    password: json['Password'] as String,
  );
}

Map<String, dynamic> _$ParentToJson(Parent instance) => <String, dynamic>{
      'data': instance.data,
      'PinCode': instance.pinCode,
      'Password': instance.password,
    };
