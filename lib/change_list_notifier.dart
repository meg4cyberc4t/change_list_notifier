library change_list_notifier;

import 'dart:math';

import 'package:flutter/foundation.dart';

class ChangeListNotifier<E> extends ChangeNotifier
    implements List, ValueListenable<List> {
  List _data;

  ChangeListNotifier(this._data);

  factory ChangeListNotifier.filled(int length, E fill,
          {bool growable = false}) =>
      ChangeListNotifier(List.filled(length, fill, growable: growable));

  factory ChangeListNotifier.empty({bool growable = false}) =>
      ChangeListNotifier(List.empty(growable: growable));

  factory ChangeListNotifier.from(Iterable elements, {bool growable = true}) =>
      ChangeListNotifier(List.from(elements, growable: growable));

  factory ChangeListNotifier.of(Iterable<E> elements, {bool growable = true}) =>
      ChangeListNotifier(List.of(elements, growable: growable));

  factory ChangeListNotifier.generate(
          int length, E Function(int index) generator,
          {bool growable = true}) =>
      ChangeListNotifier(List.generate(length, generator, growable: growable));

  @override
  E get first => _data.first;

  @override
  E get last => _data.last;

  @override
  int get length => _data.length;

  @override
  List operator +(List other) => _data + other;

  @override
  operator [](int index) => _data[index];

  @override
  void operator []=(int index, value) {
    _data[index] = value;
    notifyListeners();
  }

  @override
  void add(value) {
    _data.add(value);
    notifyListeners();
  }

  @override
  void addAll(Iterable iterable) {
    _data.addAll(iterable);
    notifyListeners();
  }

  @override
  bool any(bool Function(dynamic element) test) => _data.any(test);

  @override
  Map<int, dynamic> asMap() => _data.asMap();

  @override
  List<R> cast<R>() => _data.cast<R>();

  @override
  void clear() {
    _data.clear();
    notifyListeners();
  }

  @override
  bool contains(Object? element) => _data.contains(element);

  @override
  elementAt(int index) => _data.elementAt(index);

  @override
  bool every(bool Function(dynamic element) test) => _data.every(test);

  @override
  Iterable<T> expand<T>(Iterable<T> Function(dynamic element) toElements) =>
      _data.expand(toElements);

  @override
  void fillRange(int start, int end, [fillValue]) {
    _data.fillRange(start, end, fillValue);
    notifyListeners();
  }

  @override
  firstWhere(bool Function(dynamic element) test, {Function()? orElse}) =>
      _data.firstWhere(test, orElse: orElse);

  @override
  T fold<T>(T initialValue,
          T Function(T previousValue, dynamic element) combine) =>
      _data.fold(initialValue, combine);

  @override
  Iterable followedBy(Iterable other) => _data.followedBy(other);

  @override
  void forEach(void Function(dynamic element) action) => _data.forEach(action);

  @override
  Iterable getRange(int start, int end) => _data.getRange(start, end);

  @override
  int indexOf(element, [int start = 0]) => _data.indexOf(element);

  @override
  int indexWhere(bool Function(dynamic element) test, [int start = 0]) =>
      _data.indexWhere(test, start);

  @override
  void insert(int index, element) {
    _data.insert(index, element);
    notifyListeners();
  }

  @override
  void insertAll(int index, Iterable iterable) {
    _data.insertAll(index, iterable);
    notifyListeners();
  }

  @override
  bool get isEmpty => _data.isEmpty;

  @override
  bool get isNotEmpty => _data.isNotEmpty;

  @override
  Iterator get iterator => _data.iterator;

  @override
  String join([String separator = ""]) => _data.join(separator);

  @override
  int lastIndexOf(element, [int? start]) => _data.lastIndexOf(element, start);

  @override
  int lastIndexWhere(bool Function(dynamic element) test, [int? start]) =>
      _data.lastIndexWhere(test, start);

  @override
  lastWhere(bool Function(dynamic element) test, {Function()? orElse}) =>
      _data.lastWhere(test, orElse: orElse);

  @override
  Iterable<T> map<T>(T Function(dynamic e) toElement) => _data.map(toElement);

  @override
  reduce(Function(dynamic value, dynamic element) combine) =>
      _data.reduce(combine);

  @override
  bool remove(Object? value) {
    bool r = _data.remove(value);
    notifyListeners();
    return r;
  }

  @override
  removeAt(int index) {
    var r = _data.removeAt(index);
    notifyListeners();
    return r;
  }

  @override
  removeLast() {
    var r = _data.removeLast();
    notifyListeners();
    return r;
  }

  @override
  void removeRange(int start, int end) {
    _data.removeRange(start, end);
    notifyListeners();
  }

  @override
  void removeWhere(bool Function(dynamic element) test) {
    _data.removeWhere(test);
    notifyListeners();
  }

  @override
  void replaceRange(int start, int end, Iterable replacements) {
    _data.replaceRange(start, end, replacements);
    notifyListeners();
  }

  @override
  void retainWhere(bool Function(dynamic element) test) {
    _data.retainWhere(test);
    notifyListeners();
  }

  @override
  Iterable get reversed => _data.reversed;

  @override
  void setAll(int index, Iterable iterable) {
    _data.setAll(index, iterable);
    notifyListeners();
  }

  @override
  void setRange(int start, int end, Iterable iterable, [int skipCount = 0]) {
    _data.setRange(start, end, iterable, skipCount);
    notifyListeners();
  }

  @override
  void shuffle([Random? random]) {
    _data.shuffle(random);
    notifyListeners();
  }

  @override
  get single => _data.single;

  @override
  singleWhere(bool Function(dynamic element) test, {Function()? orElse}) =>
      _data.singleWhere(test, orElse: orElse);

  @override
  Iterable skip(int count) => _data.skip(count);

  @override
  Iterable skipWhile(bool Function(dynamic value) test) =>
      _data.skipWhile(test);

  @override
  void sort([int Function(dynamic a, dynamic b)? compare]) {
    _data.sort(compare);
    notifyListeners();
  }

  @override
  List sublist(int start, [int? end]) => _data.sublist(start, end);

  @override
  Iterable take(int count) => _data.take(count);

  @override
  Iterable takeWhile(bool Function(dynamic value) test) =>
      _data.takeWhile(test);

  @override
  List toList({bool growable = true}) => _data.toList(growable: growable);

  @override
  Set toSet() => _data.toSet();

  @override
  Iterable where(bool Function(dynamic element) test) => _data.where(test);

  @override
  Iterable<T> whereType<T>() => _data.whereType<T>();

  @override
  set first(value) {
    _data.first = value;
    notifyListeners();
  }

  @override
  set last(value) {
    _data.last = value;
    notifyListeners();
  }

  @override
  set length(int newLength) {
    _data.length = newLength;
    notifyListeners();
  }

  @override
  List get value => _data;
}
