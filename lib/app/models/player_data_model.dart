import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class PlayerDataModel {
  String? playerName;
  int? totalMatchesBulbasaur;
  int? totalMatchesCharmander;
  int? totalMatchesSquirtle;
  int? totalBulbasaurWins;
  int? totalBulbasaurDraws;
  int? totalBulbasaurLoses;
  int? totalCharmanderWins;
  int? totalCharmanderDraws;
  int? totalCharmanderLoses;
  int? totalSquirtleWins;
  int? totalSquirtleDraws;
  int? totalSquirtleLoses;

  PlayerDataModel({
    this.playerName,
    this.totalMatchesBulbasaur,
    this.totalMatchesCharmander,
    this.totalMatchesSquirtle,
    this.totalBulbasaurWins,
    this.totalBulbasaurDraws,
    this.totalBulbasaurLoses,
    this.totalCharmanderWins,
    this.totalCharmanderDraws,
    this.totalCharmanderLoses,
    this.totalSquirtleWins,
    this.totalSquirtleDraws,
    this.totalSquirtleLoses,
  });

  void setTotalMatchesBulbasaur() {
    if (totalMatchesBulbasaur != null) {
      totalMatchesBulbasaur = totalMatchesBulbasaur! + 1;
    }
  }

  void setTotalMatchesCharmander() {
    if (totalMatchesCharmander != null) {
      totalMatchesCharmander = totalMatchesCharmander! + 1;
    }
  }

  void setTotalMatchesSquirtle() {
    if (totalMatchesSquirtle != null) {
      totalMatchesSquirtle = totalMatchesSquirtle! + 1;
    }
  }

  void setTotalBulbasaurWins() {
    if (totalBulbasaurWins != null) {
      totalBulbasaurWins = totalBulbasaurWins! + 1;
    }
  }

  void setTotalBulbasaurDraws() {
    if (totalBulbasaurDraws != null) {
      totalBulbasaurDraws = totalBulbasaurDraws! + 1;
    }
  }

  void setTotalBulbasaurLoses() {
    if (totalBulbasaurLoses != null) {
      totalBulbasaurLoses = totalBulbasaurLoses! + 1;
    }
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'player_name': playerName,
      'total_matches_bulbasaur': totalMatchesBulbasaur,
      'total_matches_charmander': totalMatchesCharmander,
      'total_matches_squirtle': totalMatchesSquirtle,
      'total_bulbasaur_wins': totalBulbasaurWins,
      'total_bulbasaur_draws': totalBulbasaurDraws,
      'total_bulbasaur_loses': totalBulbasaurLoses,
      'total_charmander_wins': totalCharmanderWins,
      'total_charmander_draws': totalCharmanderDraws,
      'total_charmander_loses': totalCharmanderLoses,
      'total_squirtle_wins': totalSquirtleWins,
      'total_squirtle_draws': totalSquirtleDraws,
      'total_squirtle_loses': totalSquirtleLoses,
    };
  }

  factory PlayerDataModel.fromMap(Map<String, dynamic> map) {
    return PlayerDataModel(
      playerName:
          map['player_name'] != null ? map['player_name'] as String : null,
      totalMatchesBulbasaur: map['total_matches_bulbasaur'] != null
          ? map['total_matches_bulbasaur'] as int
          : null,
      totalMatchesCharmander: map['total_matches_charmander'] != null
          ? map['total_matches_charmander'] as int
          : null,
      totalMatchesSquirtle: map['total_matches_squirtle'] != null
          ? map['total_matches_squirtle'] as int
          : null,
      totalBulbasaurWins: map['total_bulbasaur_wins'] != null
          ? map['total_bulbasaur_wins'] as int
          : null,
      totalBulbasaurDraws: map['total_bulbasaur_draws'] != null
          ? map['total_bulbasaur_draws'] as int
          : null,
      totalBulbasaurLoses: map['total_bulbasaur_loses'] != null
          ? map['total_bulbasaur_loses'] as int
          : null,
      totalCharmanderWins: map['total_charmander_wins'] != null
          ? map['total_charmander_wins'] as int
          : null,
      totalCharmanderDraws: map['total_charmander_draws'] != null
          ? map['total_charmander_draws'] as int
          : null,
      totalCharmanderLoses: map['total_charmander_loses'] != null
          ? map['total_charmander_loses'] as int
          : null,
      totalSquirtleWins: map['total_squirtle_wins'] != null
          ? map['total_squirtle_wins'] as int
          : null,
      totalSquirtleDraws: map['total_squirtle_draws'] != null
          ? map['total_squirtle_draws'] as int
          : null,
      totalSquirtleLoses: map['total_squirtle_loses'] != null
          ? map['total_squirtle_loses'] as int
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PlayerDataModel.fromJson(String source) =>
      PlayerDataModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
