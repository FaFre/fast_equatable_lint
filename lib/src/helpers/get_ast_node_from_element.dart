import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element2.dart';

/// Helper function to get AstNode from Element2
AstNode? getAstNodeFromElement(Element2 element) {
  // For elements that can have multiple declarations (fragments),
  // we get the first fragment. If you need a specific fragment,
  // pass the fragment directly to a separate function.
  final fragment = element.firstFragment;
  final parsedLibResult = element.session
      ?.getParsedLibraryByElement2(element.library2!) as ParsedLibraryResult?;
  final fragmentDeclarationResult =
      parsedLibResult?.getFragmentDeclaration(fragment);
  return fragmentDeclarationResult?.node;
}
