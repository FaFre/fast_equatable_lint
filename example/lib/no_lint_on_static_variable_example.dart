import 'package:fast_equatable/fast_equatable.dart';

class NoLintOnStaticVariableExample with FastEquatable {
  NoLintOnStaticVariableExample();

  static const testStatic = false;

  @override
  List<Object?> get hashParameters => [];

  @override
  bool get cacheHash => true;
}
