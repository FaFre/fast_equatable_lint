import 'package:fast_equatable/fast_equatable.dart';

class BaseEquatableClass with FastEquatable {
  BaseEquatableClass({this.field});

  final String? field;

  @override
  List<Object?> get hashParameters => [field];

  @override
  bool get cacheHash => true;
}

class NeedToCallSuperWhenOverridingPropsExample extends BaseEquatableClass {
  NeedToCallSuperWhenOverridingPropsExample({this.newField});

  final String? newField;

  // A lint will appear here because props doesn't call super.props
  // So it doesn't count fields defined in NewFieldNotInPropsExample class
  @override
  List<Object?> get hashParameters => [super.hashParameters, newField];

  @override
  bool get cacheHash => true;
}
