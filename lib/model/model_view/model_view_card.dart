import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:provider_kullanimi/model/modelnewcard.dart';

class CardWidget extends StatelessWidget {
  final String cardText;

  const CardWidget(this.cardText, {super.key});

  @override
  Widget build(BuildContext context) {
    final cardListModel = Provider.of<CardListModel>(context);
    var genislik = MediaQuery.of(context).size.width;
    return Slidable(
      key: UniqueKey(),
      endActionPane: ActionPane(
        extentRatio: 0.25,
        motion: const BehindMotion(),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(width: genislik / 10),
              IconButton(
                onPressed: () {
                  cardListModel.removeCard();
                },
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
        ],
      ),
      child: Card(
        child: ListTile(
          title: Text(cardText),
        ),
      ),
    );
  }
}
