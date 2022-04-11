import 'package:clash_status/models/player_info_model.dart';
import 'package:flutter/material.dart';
import '../repository/http_get_gadges_clash.dart';

class BadgesClashRoyale extends StatefulWidget {
  ClashRoyaleModel clanImageId;
  BadgesClashRoyale(this.clanImageId, {Key? key}) : super(key: key);
  @override
  State<BadgesClashRoyale> createState() => _BadgesClashRoyaleState();
}

class _BadgesClashRoyaleState extends State<BadgesClashRoyale> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchBadges(),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          return Row(
            children: [
              Container(
                child: Image.network(
                  'https://royaleapi.github.io/cr-api-assets/badges/$clanBadges.png',
                  scale: 7,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                widget.clanImageId.clan!.name.toString(),
                style: const TextStyle(color: Colors.white,
                fontFamily: 'clash',
                fontSize: 10
                ),
                
              ),
            ],
          );
        } else if (widget.clanImageId.clan?.name == null) {
          return Row(
            children: [
              Image.network(
                'https://cdn.royaleapi.com/static/img/badge/no_clan.png?t=0b21d1b4c',
                scale: 6.5,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Sem Clan",
                style: TextStyle(color: Colors.white),
              ),
            ],
          );
        } else {
          return const CircularProgressIndicator();
        }
      }),
    );
  }

  var clanBadges;
  fetchBadges() async {
    var init = ClashRoyaleBadges();
    var badgesdata =
        await init.findBadgesId('${widget.clanImageId.clan!.badgeId}');
    clanBadges = badgesdata;
    return badgesdata;
  }
}
