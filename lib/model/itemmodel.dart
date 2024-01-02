import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  Color color;
  String sound;

  ItemModel({required this.color, required this.sound});

  void player() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
