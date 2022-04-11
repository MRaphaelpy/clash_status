class ClashRoyaleModel {
  String? tag;
  String? name;
  int? expLevel;
  int? trophies;
  int? bestTrophies;
  int? wins;
  int? losses;
  int? battleCount;
  int? threeCrownWins;
  int? challengeCardsWon;
  int? challengeMaxWins;
  int? tournamentCardsWon;
  int? tournamentBattleCount;
  String? role;
  int? donations;
  int? donationsReceived;
  int? totalDonations;
  int? warDayWins;
  int? clanCardsCollected;
  Clan? clan;
  Arena? arena;
  LeagueStatistics? leagueStatistics;
  List<Badges>? badges;
  List<Achievements>? achievements;
  List<Cards>? cards;
  List<CurrentDeck>? currentDeck;
  CurrentFavouriteCard? currentFavouriteCard;
  int? starPoints;
  int? expPoints;

  ClashRoyaleModel(
      {this.tag,
      this.name,
      this.expLevel,
      this.trophies,
      this.bestTrophies,
      this.wins,
      this.losses,
      this.battleCount,
      this.threeCrownWins,
      this.challengeCardsWon,
      this.challengeMaxWins,
      this.tournamentCardsWon,
      this.tournamentBattleCount,
      this.role,
      this.donations,
      this.donationsReceived,
      this.totalDonations,
      this.warDayWins,
      this.clanCardsCollected,
      this.clan,
      this.arena,
      this.leagueStatistics,
      this.badges,
      this.achievements,
      this.cards,
      this.currentDeck,
      this.currentFavouriteCard,
      this.starPoints,
      this.expPoints});

  ClashRoyaleModel.fromJson(Map<String, dynamic> json) {
    tag = json['tag'];
    name = json['name'];
    expLevel = json['expLevel'];
    trophies = json['trophies'];
    bestTrophies = json['bestTrophies'];
    wins = json['wins'];
    losses = json['losses'];
    battleCount = json['battleCount'];
    threeCrownWins = json['threeCrownWins'];
    challengeCardsWon = json['challengeCardsWon'];
    challengeMaxWins = json['challengeMaxWins'];
    tournamentCardsWon = json['tournamentCardsWon'];
    tournamentBattleCount = json['tournamentBattleCount'];
    role = json['role'];
    donations = json['donations'];
    donationsReceived = json['donationsReceived'];
    totalDonations = json['totalDonations'];
    warDayWins = json['warDayWins'];
    clanCardsCollected = json['clanCardsCollected'];
    clan = json['clan'] != null ? new Clan.fromJson(json['clan']) : null;
    arena = json['arena'] != null ? new Arena.fromJson(json['arena']) : null;
    leagueStatistics = json['leagueStatistics'] != null
        ? new LeagueStatistics.fromJson(json['leagueStatistics'])
        : null;
    if (json['badges'] != null) {
      badges = <Badges>[];
      json['badges'].forEach((v) {
        badges!.add(new Badges.fromJson(v));
      });
    }
    if (json['achievements'] != null) {
      achievements = <Achievements>[];
      json['achievements'].forEach((v) {
        achievements!.add(new Achievements.fromJson(v));
      });
    }
    if (json['cards'] != null) {
      cards = <Cards>[];
      json['cards'].forEach((v) {
        cards!.add(new Cards.fromJson(v));
      });
    }
    if (json['currentDeck'] != null) {
      currentDeck = <CurrentDeck>[];
      json['currentDeck'].forEach((v) {
        currentDeck!.add(new CurrentDeck.fromJson(v));
      });
    }
    currentFavouriteCard = json['currentFavouriteCard'] != null
        ? new CurrentFavouriteCard.fromJson(json['currentFavouriteCard'])
        : null;
    starPoints = json['starPoints'];
    expPoints = json['expPoints'];
  }
}
class CurrentDeck {
  String? name;
  int? id;
  int? level;
  int? starLevel;
  int? maxLevel;
  int? count;
  IconUrls? iconUrls;

  CurrentDeck(
      {this.name,
      this.id,
      this.level,
      this.starLevel,
      this.maxLevel,
      this.count,
      this.iconUrls});

  CurrentDeck.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    level = json['level'];
    starLevel = json['starLevel'];
    maxLevel = json['maxLevel'];
    count = json['count'];
    iconUrls = json['iconUrls'] != null
        ? new IconUrls.fromJson(json['iconUrls'])
        : null;
  }
}

class IconUrlsB {
  String? medium;

  IconUrlsB({this.medium});

  IconUrlsB.fromJson(Map<String, dynamic> json) {
    medium = json['medium'];
  }
}


class Clan {
  String? tag;
  String? name;
  int? badgeId;

  Clan({this.tag, this.name, this.badgeId});

  Clan.fromJson(Map<String, dynamic> json) {
    tag = json['tag'];
    name = json['name'];
    badgeId = json['badgeId'];
  }
}

class Arena {
  int? id;
  String? name;

  Arena({this.id, this.name});

  Arena.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}

class LeagueStatistics {
  CurrentSeason? currentSeason;
  PreviousSeason? previousSeason;
  BestSeason? bestSeason;

  LeagueStatistics({this.currentSeason, this.previousSeason, this.bestSeason});

  LeagueStatistics.fromJson(Map<String, dynamic> json) {
    currentSeason = json['currentSeason'] != null
        ? new CurrentSeason.fromJson(json['currentSeason'])
        : null;
    previousSeason = json['previousSeason'] != null
        ? new PreviousSeason.fromJson(json['previousSeason'])
        : null;
    bestSeason = json['bestSeason'] != null
        ? new BestSeason.fromJson(json['bestSeason'])
        : null;
  }
}

class CurrentSeason {
  int? trophies;
  int? bestTrophies;

  CurrentSeason({this.trophies, this.bestTrophies});

  CurrentSeason.fromJson(Map<String, dynamic> json) {
    trophies = json['trophies'];
    bestTrophies = json['bestTrophies'];
  }
}

class PreviousSeason {
  String? id;
  int? trophies;
  int? bestTrophies;

  PreviousSeason({this.id, this.trophies, this.bestTrophies});

  PreviousSeason.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    trophies = json['trophies'];
    bestTrophies = json['bestTrophies'];
  }

}

class BestSeason {
  String? id;
  int? trophies;

  BestSeason({this.id, this.trophies});

  BestSeason.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    trophies = json['trophies'];
  }
}

class Badges {
  String? name;
  int? level;
  int? maxLevel;
  int? progress;
  int? target;
  IconsBadges? iconUrlsq;

  Badges(
      {this.name,
      this.level,
      this.maxLevel,
      this.progress,
      this.target,
      this.iconUrlsq});

  Badges.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    level = json['level'];
    maxLevel = json['maxLevel'];
    progress = json['progress'];
    target = json['target'];
    iconUrlsq = json['iconUrls'] != null
        ?  IconsBadges.fromJson(json['iconUrls'])
        : null;
  }
}
class IconsBadges {
  String? large;

  IconsBadges({this.large});

  IconsBadges.fromJson(Map<String, dynamic> json) {
    large = json['large'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['large'] = this.large;
    return data;
  }
}


class IconUrls {
  String? large;
  IconUrls({this.large});
  IconUrls.fromJson(Map<String, dynamic> json) {
    large = json['large'];
  }
}

class Achievements {
  String? name;
  int? stars;
  int? value;
  int? target;
  String? info;
  Null? completionInfo;

  Achievements(
      {this.name,
      this.stars,
      this.value,
      this.target,
      this.info,
      this.completionInfo});

  Achievements.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    stars = json['stars'];
    value = json['value'];
    target = json['target'];
    info = json['info'];
    completionInfo = json['completionInfo'];
  }
}

class Cards {
  String? name;
  int? id;
  int? level;
  int? maxLevel;
  int? count;
  IconUrls? iconUrls;
  int? starLevel;

  Cards(
      {this.name,
      this.id,
      this.level,
      this.maxLevel,
      this.count,
      this.iconUrls,
      this.starLevel});

  Cards.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    level = json['level'];
    maxLevel = json['maxLevel'];
    count = json['count'];
    iconUrls = json['iconUrls'] != null
        ? new IconUrls.fromJson(json['iconUrls'])
        : null;
    starLevel = json['starLevel'];
  }
}

class IconUrlsA{
  String? medium;

  IconUrlsA({this.medium});

  IconUrlsA.fromJson(Map<String, dynamic> json) {
    medium = json['medium'];
  }
}

class CurrentFavouriteCard {
  String? name;
  int? id;
  int? maxLevel;
  IconUrls? iconUrls;

  CurrentFavouriteCard({this.name, this.id, this.maxLevel, this.iconUrls});

  CurrentFavouriteCard.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    maxLevel = json['maxLevel'];
    iconUrls = json['iconUrls'] != null
        ? new IconUrls.fromJson(json['iconUrls'])
        : null;
  }
}
