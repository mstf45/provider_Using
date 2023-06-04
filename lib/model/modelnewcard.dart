import 'package:flutter/cupertino.dart';

class CardListModel extends ChangeNotifier {
  final List<String> _cards = ['Card 1', 'Card 2', 'Card 3'];

  int get carCount => _cards.length;

  String getCard(int index) => _cards[index];

  void addCard() {
    _cards.add('Card ${_cards.length + 1}');
    notifyListeners();
  }

  void removeCard() {
    _cards.removeAt(_cards.length - 1);
    notifyListeners();
  }
}
