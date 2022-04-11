import 'package:clash_status/models/player_info_model.dart';
import 'package:flutter/material.dart';

class TagPlayer extends StatelessWidget {
  ClashRoyaleModel dataPlayer;
  TagPlayer(this.dataPlayer, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      dataPlayer.tag.toString(),
      style: const TextStyle(
        color: Colors.white,
        
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
