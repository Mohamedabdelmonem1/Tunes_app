import 'package:flutter/material.dart';
import 'package:tunes_app/component/items.dart';
import 'package:tunes_app/model/itemmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ItemModel> tunes = [
    ItemModel(color: Colors.red, sound: 'note1.wav'),
    ItemModel(color: Colors.yellow, sound: 'note2.wav'),
    ItemModel(color: Colors.green, sound: 'note3.wav'),
    ItemModel(color: Colors.grey, sound: 'note4.wav'),
    ItemModel(color: Colors.purple, sound: 'note5.wav'),
    ItemModel(color: Colors.blue, sound: 'note6.wav'),
    ItemModel(color: Colors.deepOrange, sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff24323A),
        elevation: 0,
        title: Text("Flutter Tune"),
      ),
      body: Column(
        children: tunes.map((e) => TuneItem(e)).toList(),

        // or use method اللي تحت خالص
        //children: getTuneItems(),
      ),
    ));
  }

  // ممكن تستعمل ال method دي بدل ال map عادي لكن ال map اسهل
  getTuneItems() {
    List<Widget> items = [];
    for (int i = 0; i < tunes.length; i++) {
      items.add(TuneItem(tunes[i]));
    }
    return items;
  }
}
