import 'dart:convert';

PlayerSearch fifaPlayerSearchFromJson(String str) =>
    PlayerSearch.fromJson(json.decode(str));

String fifaPlayerSearchToJson(PlayerSearch data) =>
    json.encode(data.toJson());

class PlayerSearch {
  int page;
  int totalPages;
  int totalResults;
  String type;
  int count;
  List<Item> items;

  PlayerSearch({
    this.page,
    this.totalPages,
    this.totalResults,
    this.type,
    this.count,
    this.items,
  });

  factory PlayerSearch.fromJson(Map<String, dynamic> json) =>
      PlayerSearch(
        page: json["page"],
        totalPages: json["totalPages"],
        totalResults: json["totalResults"],
        type: json["type"],
        count: json["count"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "totalPages": totalPages,
        "totalResults": totalResults,
        "type": type,
        "count": count,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class Item {
  String commonName;
  String firstName;
  String lastName;
  League league;
  Nation nation;
  Club club;
  Headshot headshot;
  String position;
  int composure;
  String playStyle;
  dynamic playStyleId;
  int height;
  int weight;
  String birthdate;
  int age;
  int acceleration;
  int aggression;
  int agility;
  int balance;
  int ballcontrol;
  String foot;
  int skillMoves;
  int crossing;
  int curve;
  int dribbling;
  int finishing;
  int freekickaccuracy;
  int gkdiving;
  int gkhandling;
  int gkkicking;
  int gkpositioning;
  int gkreflexes;
  int headingaccuracy;
  int interceptions;
  int jumping;
  int longpassing;
  int longshots;
  int marking;
  int penalties;
  int positioning;
  int potential;
  int reactions;
  int shortpassing;
  int shotpower;
  int slidingtackle;
  int sprintspeed;
  int standingtackle;
  int stamina;
  int strength;
  int vision;
  int volleys;
  int weakFoot;
  List<String> traits;
  List<String> specialities;
  String atkWorkRate;
  String defWorkRate;
  dynamic playerType;
  List<Attribute> attributes;
  String name;
  int rarityId;
  bool isIcon;
  String quality;
  bool isGk;
  String positionFull;
  bool isSpecialType;
  dynamic contracts;
  dynamic fitness;
  dynamic rawAttributeChemistryBonus;
  dynamic isLoan;
  dynamic squadPosition;
  dynamic iconAttributes;
  String itemType;
  dynamic discardValue;
  String id;
  String modelName;
  int baseId;
  int rating;

  Item({
    this.commonName,
    this.firstName,
    this.lastName,
    this.league,
    this.nation,
    this.club,
    this.headshot,
    this.position,
    this.composure,
    this.playStyle,
    this.playStyleId,
    this.height,
    this.weight,
    this.birthdate,
    this.age,
    this.acceleration,
    this.aggression,
    this.agility,
    this.balance,
    this.ballcontrol,
    this.foot,
    this.skillMoves,
    this.crossing,
    this.curve,
    this.dribbling,
    this.finishing,
    this.freekickaccuracy,
    this.gkdiving,
    this.gkhandling,
    this.gkkicking,
    this.gkpositioning,
    this.gkreflexes,
    this.headingaccuracy,
    this.interceptions,
    this.jumping,
    this.longpassing,
    this.longshots,
    this.marking,
    this.penalties,
    this.positioning,
    this.potential,
    this.reactions,
    this.shortpassing,
    this.shotpower,
    this.slidingtackle,
    this.sprintspeed,
    this.standingtackle,
    this.stamina,
    this.strength,
    this.vision,
    this.volleys,
    this.weakFoot,
    this.traits,
    this.specialities,
    this.atkWorkRate,
    this.defWorkRate,
    this.playerType,
    this.attributes,
    this.name,
    this.rarityId,
    this.isIcon,
    this.quality,
    this.isGk,
    this.positionFull,
    this.isSpecialType,
    this.contracts,
    this.fitness,
    this.rawAttributeChemistryBonus,
    this.isLoan,
    this.squadPosition,
    this.iconAttributes,
    this.itemType,
    this.discardValue,
    this.id,
    this.modelName,
    this.baseId,
    this.rating,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        commonName: json["commonName"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        league: League.fromJson(json["league"]),
        nation: Nation.fromJson(json["nation"]),
        club: Club.fromJson(json["club"]),
        headshot: Headshot.fromJson(json["headshot"]),
        position: json["position"],
        composure: json["composure"],
        playStyle: json["playStyle"],
        playStyleId: json["playStyleId"],
        height: json["height"],
        weight: json["weight"],
        birthdate: json["birthdate"],
        age: json["age"],
        acceleration: json["acceleration"],
        aggression: json["aggression"],
        agility: json["agility"],
        balance: json["balance"],
        ballcontrol: json["ballcontrol"],
        foot: json["foot"],
        skillMoves: json["skillMoves"],
        crossing: json["crossing"],
        curve: json["curve"],
        dribbling: json["dribbling"],
        finishing: json["finishing"],
        freekickaccuracy: json["freekickaccuracy"],
        gkdiving: json["gkdiving"],
        gkhandling: json["gkhandling"],
        gkkicking: json["gkkicking"],
        gkpositioning: json["gkpositioning"],
        gkreflexes: json["gkreflexes"],
        headingaccuracy: json["headingaccuracy"],
        interceptions: json["interceptions"],
        jumping: json["jumping"],
        longpassing: json["longpassing"],
        longshots: json["longshots"],
        marking: json["marking"],
        penalties: json["penalties"],
        positioning: json["positioning"],
        potential: json["potential"],
        reactions: json["reactions"],
        shortpassing: json["shortpassing"],
        shotpower: json["shotpower"],
        slidingtackle: json["slidingtackle"],
        sprintspeed: json["sprintspeed"],
        standingtackle: json["standingtackle"],
        stamina: json["stamina"],
        strength: json["strength"],
        vision: json["vision"],
        volleys: json["volleys"],
        weakFoot: json["weakFoot"],
        traits: json["traits"] == null
            ? null
            : List<String>.from(json["traits"].map((x) => x)),
        specialities: json["specialities"] == null
            ? null
            : List<String>.from(json["specialities"].map((x) => x)),
        atkWorkRate: json["atkWorkRate"],
        defWorkRate: json["defWorkRate"],
        playerType: json["playerType"],
        attributes: List<Attribute>.from(
            json["attributes"].map((x) => Attribute.fromJson(x))),
        name: json["name"],
        rarityId: json["rarityId"],
        isIcon: json["isIcon"],
        quality: json["quality"],
        isGk: json["isGK"],
        positionFull: json["positionFull"],
        isSpecialType: json["isSpecialType"],
        contracts: json["contracts"],
        fitness: json["fitness"],
        rawAttributeChemistryBonus: json["rawAttributeChemistryBonus"],
        isLoan: json["isLoan"],
        squadPosition: json["squadPosition"],
        iconAttributes: json["iconAttributes"],
        itemType: json["itemType"],
        discardValue: json["discardValue"],
        id: json["id"],
        modelName: json["modelName"],
        baseId: json["baseId"],
        rating: json["rating"],
      );

  Map<String, dynamic> toJson() => {
        "commonName": commonName,
        "firstName": firstName,
        "lastName": lastName,
        "league": league.toJson(),
        "nation": nation.toJson(),
        "club": club.toJson(),
        "headshot": headshot.toJson(),
        "position": position,
        "composure": composure,
        "playStyle": playStyle,
        "playStyleId": playStyleId,
        "height": height,
        "weight": weight,
        "birthdate": birthdate,
        "age": age,
        "acceleration": acceleration,
        "aggression": aggression,
        "agility": agility,
        "balance": balance,
        "ballcontrol": ballcontrol,
        "foot": foot,
        "skillMoves": skillMoves,
        "crossing": crossing,
        "curve": curve,
        "dribbling": dribbling,
        "finishing": finishing,
        "freekickaccuracy": freekickaccuracy,
        "gkdiving": gkdiving,
        "gkhandling": gkhandling,
        "gkkicking": gkkicking,
        "gkpositioning": gkpositioning,
        "gkreflexes": gkreflexes,
        "headingaccuracy": headingaccuracy,
        "interceptions": interceptions,
        "jumping": jumping,
        "longpassing": longpassing,
        "longshots": longshots,
        "marking": marking,
        "penalties": penalties,
        "positioning": positioning,
        "potential": potential,
        "reactions": reactions,
        "shortpassing": shortpassing,
        "shotpower": shotpower,
        "slidingtackle": slidingtackle,
        "sprintspeed": sprintspeed,
        "standingtackle": standingtackle,
        "stamina": stamina,
        "strength": strength,
        "vision": vision,
        "volleys": volleys,
        "weakFoot": weakFoot,
        "traits":
            traits == null ? null : List<dynamic>.from(traits.map((x) => x)),
        "specialities": specialities == null
            ? null
            : List<dynamic>.from(specialities.map((x) => x)),
        "atkWorkRate": atkWorkRate,
        "defWorkRate": defWorkRate,
        "playerType": playerType,
        "attributes": List<dynamic>.from(attributes.map((x) => x.toJson())),
        "name": name,
        "rarityId": rarityId,
        "isIcon": isIcon,
        "quality": quality,
        "isGK": isGk,
        "positionFull": positionFull,
        "isSpecialType": isSpecialType,
        "contracts": contracts,
        "fitness": fitness,
        "rawAttributeChemistryBonus": rawAttributeChemistryBonus,
        "isLoan": isLoan,
        "squadPosition": squadPosition,
        "iconAttributes": iconAttributes,
        "itemType": itemType,
        "discardValue": discardValue,
        "id": id,
        "modelName": modelName,
        "baseId": baseId,
        "rating": rating,
      };
}

class Attribute {
  String name;
  int value;
  List<int> chemistryBonus;

  Attribute({
    this.name,
    this.value,
    this.chemistryBonus,
  });

  factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
        name: json["name"],
        value: json["value"],
        chemistryBonus: List<int>.from(json["chemistryBonus"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "value": value,
        "chemistryBonus": List<dynamic>.from(chemistryBonus.map((x) => x)),
      };
}

class Club {
  ClubImageUrls imageUrls;
  String abbrName;
  int id;
  dynamic imgUrl;
  String name;

  Club({
    this.imageUrls,
    this.abbrName,
    this.id,
    this.imgUrl,
    this.name,
  });

  factory Club.fromJson(Map<String, dynamic> json) => Club(
        imageUrls: ClubImageUrls.fromJson(json["imageUrls"]),
        abbrName: json["abbrName"],
        id: json["id"],
        imgUrl: json["imgUrl"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "imageUrls": imageUrls.toJson(),
        "abbrName": abbrName,
        "id": id,
        "imgUrl": imgUrl,
        "name": name,
      };
}

class ClubImageUrls {
  ImageUrls dark;
  ImageUrls light;

  ClubImageUrls({
    this.dark,
    this.light,
  });

  factory ClubImageUrls.fromJson(Map<String, dynamic> json) => ClubImageUrls(
        dark: ImageUrls.fromJson(json["dark"]),
        light: ImageUrls.fromJson(json["light"]),
      );

  Map<String, dynamic> toJson() => {
        "dark": dark.toJson(),
        "light": light.toJson(),
      };
}

class ImageUrls {
  String small;
  String medium;
  String large;

  ImageUrls({
    this.small,
    this.medium,
    this.large,
  });

  factory ImageUrls.fromJson(Map<String, dynamic> json) => ImageUrls(
        small: json["small"],
        medium: json["medium"],
        large: json["large"],
      );

  Map<String, dynamic> toJson() => {
        "small": small,
        "medium": medium,
        "large": large,
      };
}

class Headshot {
  String imgUrl;
  bool isDynamicPortrait;

  Headshot({
    this.imgUrl,
    this.isDynamicPortrait,
  });

  factory Headshot.fromJson(Map<String, dynamic> json) => Headshot(
        imgUrl: json["imgUrl"],
        isDynamicPortrait: json["isDynamicPortrait"],
      );

  Map<String, dynamic> toJson() => {
        "imgUrl": imgUrl,
        "isDynamicPortrait": isDynamicPortrait,
      };
}

class League {
  LeagueImageUrls imageUrls;
  String abbrName;
  int id;
  dynamic imgUrl;
  String name;

  League({
    this.imageUrls,
    this.abbrName,
    this.id,
    this.imgUrl,
    this.name,
  });

  factory League.fromJson(Map<String, dynamic> json) => League(
        imageUrls: LeagueImageUrls.fromJson(json["imageUrls"]),
        abbrName: json["abbrName"],
        id: json["id"],
        imgUrl: json["imgUrl"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "imageUrls": imageUrls.toJson(),
        "abbrName": abbrName,
        "id": id,
        "imgUrl": imgUrl,
        "name": name,
      };
}

class LeagueImageUrls {
  String dark;
  String light;

  LeagueImageUrls({
    this.dark,
    this.light,
  });

  factory LeagueImageUrls.fromJson(Map<String, dynamic> json) =>
      LeagueImageUrls(
        dark: json["dark"],
        light: json["light"],
      );

  Map<String, dynamic> toJson() => {
        "dark": dark,
        "light": light,
      };
}

class Nation {
  ImageUrls imageUrls;
  String abbrName;

  int id;
  dynamic imgUrl;
  String name;

  Nation({
    this.imageUrls,
    this.abbrName,
    this.id,
    this.imgUrl,
    this.name,
  });

  factory Nation.fromJson(Map<String, dynamic> json) => Nation(
        imageUrls: ImageUrls.fromJson(json["imageUrls"]),
        abbrName: json["abbrName"],
        id: json["id"],
        imgUrl: json["imgUrl"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "imageUrls": imageUrls.toJson(),
        "abbrName": abbrName,
        "id": id,
        "imgUrl": imgUrl,
        "name": name,
      };
}
//
//class EnumValues<T> {
//  Map<String, T> map;
//  Map<T, String> reverseMap;
//
//  EnumValues(this.map);
//
//  Map<T, String> get reverse {
//    if (reverseMap == null) {
//      reverseMap = map.map((k, v) => new MapEntry(v, k));
//    }
//    return reverseMap;
//  }
//}
