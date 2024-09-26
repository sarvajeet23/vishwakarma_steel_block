import 'package:freezed_annotation/freezed_annotation.dart';
part 'person_model.g.dart';
part 'person_model.freezed.dart';

@Freezed()
class PersonModel with _$PersonModel {
  factory PersonModel({
  @Default("")  String? name,
    String? address,
  }) = _PersonModel;

  factory PersonModel.fromJson(Map<String, dynamic> json) =>
      _$PersonModelFromJson(json);
}
