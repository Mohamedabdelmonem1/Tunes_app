import 'package:flutter/material.dart';
import 'package:tunes_app/model/itemmodel.dart';







Widget TuneItem(ItemModel tune) {
  return Expanded(
    child: InkWell(
      onTap: () {
        tune.player();
     },
      child: Container(
        color: tune.color,
      ),
    ),
  );
}
