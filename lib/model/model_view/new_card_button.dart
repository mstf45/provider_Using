import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_kullanimi/model/modelnewcard.dart';

class AddCardButton extends StatelessWidget {
  const AddCardButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cardListModel = Provider.of<CardListModel>(context);
    var genislik = MediaQuery.of(context).size.width;
    var yukseklik = MediaQuery.of(context).size.height;
    return SizedBox(
      height: yukseklik / 15,
      width: genislik,
      child: ElevatedButton(
        onPressed: () {
          cardListModel.addCard();
        },
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll<Color>(
            Color.fromRGBO(33, 55, 72, 1),
          ),
          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        child: const Text('Card Ekle'),
      ),
    );
  }
}
