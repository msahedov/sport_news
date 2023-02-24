enum SportType {
  football,
  basketball,
  /* 
  floorball,
  volleyball,
  chess,
  martialArt,
  tableTennis,
  athletics 
 */
}

extension BoxTypeMapping on SportType {
  String get stringValue {
    switch (this) {
      case SportType.football:
        return 'Football';
      case SportType.basketball:
        return 'Basketball';
      /*
      case SportType.floorball:
        return 'Floorball';
      case SportType.volleyball:
        return 'Volleyball';
      case SportType.chess:
        return 'Chess';
      case SportType.martialArt:
        return 'Martial art';
      case SportType.tableTennis:
        return 'Table tennis';
      case SportType.athletics:
        return 'Athletics';
    */
    }
  }
}
