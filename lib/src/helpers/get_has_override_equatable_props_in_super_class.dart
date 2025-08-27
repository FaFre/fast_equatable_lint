import 'package:analyzer/dart/element/element2.dart';
import 'package:collection/collection.dart';

import '../../const.dart';

/// Check if the superclass has override props or not
bool getHasOverrideEquatablePropsInSuperClass(
  InterfaceElement2 superClassElement,
) {
  final equatablePropsAccessorElement =
      superClassElement.getters2.firstWhereOrNull(
    (accessor) => accessor.name3 == equatablePropsName,
  );
  if (equatablePropsAccessorElement != null) {
    return true;
  }

  final equatablePropsFieldElement = superClassElement.fields2.firstWhereOrNull(
    (field) => field.name3 == equatablePropsName,
  );
  return equatablePropsFieldElement != null;
}
