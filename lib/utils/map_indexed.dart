import 'dart:core';

extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E e, int ind) fn) {
    int index = 0;
    return map((e) => fn(e, index++));
  }
}
