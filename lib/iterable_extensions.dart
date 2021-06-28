part of servicestack;

//https://github.com/dart-lang/collection/blob/master/lib/src/iterable_extensions.dart
extension IterableExtensions<T> on Iterable<T> {
  /// The first element satisfying [test], or `null` if there are none.
  T? firstWhereOrNull(bool Function(T element) test) {
    for (var element in this) {
      if (test(element)) return element;
    }
    return null;
  }
}