import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'question_country_model.g.dart';

@JsonSerializable()
class QuestionCountryModel extends Equatable {
  final int id;

  final List<String> name;

  @JsonKey(name: 'image_src')
  final String imageUrl;

  @JsonKey(name: 'correct_name')
  final String correctName;

  const QuestionCountryModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.correctName,
  });

  @override
  List<Object?> get props => [id, name, imageUrl, correctName];

  factory QuestionCountryModel.fromJson(Map<String, dynamic> json) => _$QuestionCountryModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionCountryModelToJson(this);
}
