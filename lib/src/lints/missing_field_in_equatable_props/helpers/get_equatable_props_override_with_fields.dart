import 'convert_fields_names_to_single_string.dart';

/// Helper to get a formatted string with the correct fields in it
/// Depending on whether your super class override equatable props
String getEquatablePropsOverrideWithFields({
  required List<String> fieldsNames,
  required bool hasOverrideEquatablePropsInSuperClass,
}) {
  const override = '\n\n\t@override';
  const equatablePropsGetterDefinition =
      '\n\tList<Object?> get hashParameters => ';

  final fieldsNamesPrefix = hasOverrideEquatablePropsInSuperClass
      ? 'super.hashParameters..addAll('
      : '';
  final fieldsNamesSuffix = hasOverrideEquatablePropsInSuperClass ? ')' : '';

  const end = ';\n';

  final fieldsNamesSingleString = convertFieldsNamesToSingleString(fieldsNames);

  return override +
      equatablePropsGetterDefinition +
      fieldsNamesPrefix +
      fieldsNamesSingleString +
      fieldsNamesSuffix +
      end;
}
