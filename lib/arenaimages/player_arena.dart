import 'dart:convert';

import 'package:flutter/material.dart';

import '../repository/http_get_gadges_clash.dart';

class ArenaPlayer extends StatefulWidget {
  var idArena;
  ArenaPlayer(this.idArena, {Key? key}) : super(key: key);

  @override
  State<ArenaPlayer> createState() => _ArenaPlayerState();
}
class _ArenaPlayerState extends State<ArenaPlayer> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: findPlayerArena(),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          return Center(
              child: Image.network(
                  'https://cdn.royaleapi.com/static/img/arenas-fs8/128x128/arena$clanArena-fs8.png?t=07d97bdcc?2'),
            );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      }),
    );
  }
  var clanArena;
  findPlayerArena() async {
    var init = ClashRoyaleBadges();
    var jsonFinal = await init.fetchArena(widget.idArena);
    clanArena = jsonFinal;
    return clanArena;
  }
}
