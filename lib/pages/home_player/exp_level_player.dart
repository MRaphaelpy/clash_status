import 'package:clash_status/models/player_info_model.dart';
import 'package:flutter/material.dart';

class ExpLevelPlayer extends StatelessWidget {
  ClashRoyaleModel dataPlayer;
  ExpLevelPlayer(this.dataPlayer, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(alignment: AlignmentDirectional.topStart, children: [
        Image.asset(
          "images/level.png",
          scale: 2.2,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 7, left: 8, ),
          child: Text(
            dataPlayer.expLevel.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontFamily: "clash",
            ),
          ),
        )
      ]),
    );
  }
}
