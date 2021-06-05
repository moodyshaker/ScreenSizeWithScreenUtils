import 'package:json_annotation/json_annotation.dart';
part 'data.g.dart';

@JsonSerializable()
class Data {
  String answer;
  @JsonKey(name: 'question_id')
  int questionId;
  int id;
  String question;
  @JsonKey(name: 'question_Ar')
  String questionAr;

  Data({this.answer, this.questionId, this.id, this.question, this.questionAr});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}