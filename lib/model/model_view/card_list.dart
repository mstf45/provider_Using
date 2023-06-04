import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_kullanimi/model/model_view/model_view_card.dart';
import 'package:provider_kullanimi/model/modelnewcard.dart';

class CardList extends StatelessWidget {
  const CardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cardListModel = Provider.of<CardListModel>(context);
    return Expanded(
      child: ListView.builder(
        itemCount: cardListModel.carCount,
        itemBuilder: (context, index) {
          return CardWidget(cardListModel.getCard(index));
        },
      ),
    );
  }
}
