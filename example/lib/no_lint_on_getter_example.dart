import 'package:fast_equatable/fast_equatable.dart';

class NoLintOnGetterExample with FastEquatable {
  NoLintOnGetterExample();

  bool get testGetter => false;

  @override
  List<Object?> get hashParameters => [];

  @override
  bool get cacheHash => true;
}
