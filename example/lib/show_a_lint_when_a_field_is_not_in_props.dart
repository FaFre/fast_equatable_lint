import 'package:fast_equatable/fast_equatable.dart';

class FieldNotInPropsExample with FastEquatable {
  FieldNotInPropsExample({this.field});

  // A lint will appear here because field is not in not in props
  final String? field;

  @override
  List<Object?> get hashParameters => [];

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
  OtherFieldToAddToPropsExample({this.newField});

  final String? newField;

  @override
  List<Object?> get hashParameters => super.hashParameters..addAll([newField]);

  @override
  // ignore: unnecessary_overrides
  bool get cacheHash => super.cacheHash;
}
