import 'package:clash_status/models/player_info_model.dart';
import 'package:flutter/material.dart';

class CardsGrid extends StatelessWidget {
ClashRoyaleModel dataPlayer;
CardsGrid(this.dataPlayer, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
var cardDeck =[];
String cardNames = '';
for(var i in dataPlayer.currentDeck!){
  cardDeck.add(i);
}
  return GridView.count(
    crossAxisCount: 4,
      children: List.generate(cardDeck.length, (index){
        cardNames = cardDeck[index].name;
        return Image.network('https://cdn.royaleapi.com/static/img/cards-75/${cardNames.toLowerCase().replaceAll(' ', '-').replaceAll('.', '')}.png?t=6b807620c',);
      }),  
  );
    //
  }
  
}