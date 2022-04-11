import 'dart:convert';
import 'package:http/http.dart' as http;

class ClashRoyaleBadges {
  findBadgesId(badgesId) async {
    var namedbag = int.parse(badgesId);
    var url = Uri.parse(
        'https://royaleapi.github.io/cr-api-data/json/alliance_badges.json');
    var response = await http.get(url);
    var jsonFinal = jsonDecode(response.body);
    for (var list in jsonFinal) {
      if (list['id'] == namedbag) {
        var namedbag = list['name'];
        return namedbag;
      }
    }
  }

  fetchArena(int arenaId)async{
    var url = Uri.parse('https://royaleapi.github.io/cr-api-data/json/arenas.json');
    int arenaNum = 0;
    var response = await http.get(url);
    var jsonFinal = jsonDecode(response.body);
    for(var list in jsonFinal){
      if(list['id'] == arenaId){
        arenaNum =list['arena'];
      }
    }
    return arenaNum;
  }
}
