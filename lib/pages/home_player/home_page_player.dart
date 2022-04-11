import 'package:clash_status/arenaimages/player_arena.dart';
import 'package:clash_status/badgesclash/badges_clashroyale_find.dart';
import 'package:clash_status/badgesclash/badges_player.dart';
import 'package:clash_status/models/player_info_model.dart';
import 'package:clash_status/pages/cards_grid.dart';
import 'package:clash_status/pages/home_player/exp_level_player.dart';
import 'package:clash_status/pages/home_player/name_player.dart';
import 'package:clash_status/pages/home_player/tag_player.dart';
import 'package:flutter/material.dart';

class HomePagePlayer extends StatefulWidget {
  ClashRoyaleModel playerData;

  HomePagePlayer(this.playerData);

  @override
  State<HomePagePlayer> createState() => _HomePagePlayerState();
}

class _HomePagePlayerState extends State<HomePagePlayer> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var dataPlayer = widget.playerData;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(255, 196, 196, 196),
                    Colors.black,
                  ],
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: width * 0.25,
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: NamePlayer(dataPlayer),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: const Text(
                                  "Nivel: ",
                                  style: TextStyle(
                                      fontFamily: 'clash', color: Colors.white),
                                ),
                              ),
                              ExpLevelPlayer(dataPlayer),
                            ],
                          ),
                          Expanded(
                            child: Container(
                              margin:const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [BadgesClashRoyale(dataPlayer)],
                              ),
                            ),
                          ),
                         
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: width * 0.25,
                      height: 200,
                      child: Column(
                        children: [
                          ArenaPlayer(dataPlayer.arena!.id),
                          Text(
                            dataPlayer.arena!.name.toString(),
                            style: const TextStyle(
                              fontFamily: 'clash',
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'images/trofeu.gif',
                                scale: 6,
                              ),
                              Text(
                                "Troféus: ${dataPlayer.trophies.toString()}",
                                style: const TextStyle(
                                  fontFamily: 'clash',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints(minWidth: 100, maxWidth: 390),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            height: 200,
            child: CardsGrid(dataPlayer),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(
                color: Colors.black,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
                
              ],
            ),
          ),
         //  ConquistaBadge(dataPlayer),
        ],
      ),
    );
  }
}
