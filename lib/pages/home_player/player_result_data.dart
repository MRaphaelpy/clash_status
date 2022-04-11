import 'package:clash_status/models/player_info_model.dart';
import 'package:clash_status/pages/home_player/home_page_player.dart';
import 'package:flutter/material.dart';

import '../../repository/http_request.dart';

class PlayerData extends StatefulWidget {
  var dadosDoJogador;
  PlayerData(this.dadosDoJogador, {Key? key}) : super(key: key);
  @override
  State<PlayerData> createState() => _PlayerDataState();
}

class _PlayerDataState extends State<PlayerData> {
  String playersTag ='';
  @override
  Widget build(BuildContext context) {
    playersTag = widget.dadosDoJogador;
    return FutureBuilder(
      future: fetchStatus(),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          dynamic dataPlayers = snapshot.data;
          ClashRoyaleModel playerModel = dataPlayers;
          return HomePagePlayer(playerModel);
        } else {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      }),
    );
  }
  Future<ClashRoyaleModel> fetchStatus() async {
    var initGetStatus = ClashRoyaleGetStatus();
    String playerTag = playersTag;
    playerTag = playerTag.replaceAll('#', '');
    var recivedStatus =
        await initGetStatus.fetchStatusClash(playerTag);
    return recivedStatus;
  }
}

// tag GJLYVR8, 92L9R2JG