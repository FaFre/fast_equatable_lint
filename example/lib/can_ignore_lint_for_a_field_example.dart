import 'package:fast_equatable/fast_equatable.dart';

class IgnoreOnePropExample with FastEquatable {
  IgnoreOnePropExample({this.ignoredField, this.nonIgnoredField});

  // expect_lint: missing_field_in_equatable_props
  final String? ignoredField;

  final String? nonIgnoredField;

  @override
  bool get cacheHash => true;

  @override
  List<Object?> get hashParameters => [];
}
