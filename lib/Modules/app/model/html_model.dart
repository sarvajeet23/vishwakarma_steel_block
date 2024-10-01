// models/package_model.dart
class HTMLModel {
  final String? packageInclusions;
  final String? packageExclusions;
  final String? packageMustKnows;

  HTMLModel({
    this.packageInclusions,
    this.packageExclusions,
    this.packageMustKnows,
  });

  factory HTMLModel.fromJson(Map<String, dynamic> json) {
    return HTMLModel(
      packageInclusions: json['package_inclusions'] ?? '',
      packageExclusions: json['package_exclusions'] ?? '',
      packageMustKnows: json['package_must_knows'] ?? '',
    );
  }
}
