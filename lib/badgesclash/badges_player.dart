import 'package:flutter/material.dart';

import '../models/player_info_model.dart';

class ConquistaBadge extends StatelessWidget {
  ClashRoyaleModel dataPlayer;
   ConquistaBadge(this.dataPlayer,{ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var bagesIcons = [];
    var urls;
    var name;
    for(var i in dataPlayer.badges!){
      bagesIcons.add(i);
    }
    print(bagesIcons.length);
    return GridView.count(crossAxisCount: 1,
    children: List.generate(bagesIcons.length, (index){
      urls = bagesIcons[index];
      print(urls);
      return Container();
    }),
    );
  }
}