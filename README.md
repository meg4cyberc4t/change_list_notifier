# change_list_notifier
 A list that can be listened to via ValueListanable

Эта библиотека позволяет использовать List как ChangeNotifier, а значит прослушивать его изменения и взаимодействовать с ними.

```dart
  ///...
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
  ///...
```