// ignore_for_file: overridden_fields

import 'package:fast_equatable/fast_equatable.dart';

class FieldNotInPropsExample with FastEquatable {
  FieldNotInPropsExample({this.field, this.field2});

  // A lint will appear because these fields are not in not in props

  final String? field;

  final String? field2;

  @override
  late final List<Object?> hashParameters = [];

  @override
  bool get cacheHash => true;
}

class NoFieldToAddToPropsExample extends FieldNotInPropsExample {
  NoFieldToAddToPropsExample();

  @override
  // ignore: unnecessary_overrides
  bool get cacheHash => super.cacheHash;

  @override
  // ignore: unnecessary_overrides
  List<Object?> get hashParameters => super.hashParameters;
}

class OtherFieldToAddToPropsExample extends FieldNotInPropsExample {
  OtherFieldToAddToPropsExample({this.newField, this.newField2});

  // A lint will appear because these fields are not in not in props

  final String? newField;

  final String? newField2;

  @override
  late final List<Object?> hashParameters = super.hashParameters..addAll([]);

  @override
  // ignore: unnecessary_overrides
  bool get cacheHash => super.cacheHash;
}
