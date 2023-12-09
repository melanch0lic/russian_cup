import 'package:json_annotation/json_annotation.dart';

import 'answer.dart';

part 'material.g.dart';

@JsonSerializable()
class Material {
  @JsonKey(name: 'material-id')
  final int id;
  final String? name;
  @JsonKey(name: 'lesson-text')
  final String text;

  Material({required this.id, required this.name, required this.text});

  factory Material.fromJson(Map<String, dynamic> json) =>
      _$MaterialFromJson(json);
}
