// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    answer: json['answer'] as String,
    questionId: json['question_id'] as int,
    id: json['id'] as int,
    question: json['question'] as String,
    questionAr: json['question_Ar'] as String,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'answer': instance.answer,
      'question_id': instance.questionId,
      'id': instance.id,
      'question': instance.question,
      'question_Ar': instance.questionAr,
    };
