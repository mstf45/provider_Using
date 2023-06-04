import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_kullanimi/model/model_view/card_list.dart';
import 'package:provider_kullanimi/model/model_view/model_view_card.dart';
import 'package:provider_kullanimi/model/model_view/new_card_button.dart';
import 'package:provider_kullanimi/model/modelnewcard.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cardListModel = Provider.of<CardListModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            cardListModel.carCount == 0
                ? const Expanded(
                    child: Center(
                      child: Text(
                        'Veri Yok',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  )
                : const CardList(),
            const AddCardButton()
          ],
        ),
      ),
    );
  }
}
