import 'package:flutter/material.dart';
import 'package:provider_kullanimi/home.dart';
import 'package:provider/provider.dart';
import 'package:provider_kullanimi/model/modelnewcard.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CardListModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
