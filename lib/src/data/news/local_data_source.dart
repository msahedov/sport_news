import 'package:flutter/material.dart';

import 'model.dart';
import 'package:sport_news/src/core/enum/sport_types.dart';

class LocalNewsDataSource {
  static ValueNotifier<List<Report>> bookmarks = ValueNotifier([]);

  static List<Report> get allNews => [
        Report(
            id: 100,
            header:
                "Son Heung-min: Tottenham condemn 'utterly reprehensible' racist abuse aimed at forward",
            body:
                "The abuse occurred during Sunday's 2-0 Premier League victory over West Ham, during which substitute Son scored Spurs' second goal.Tottenham posted on Twitter saying they had reported the abuse towards Son.'We stand with Sonny and once again call on the social media companies and authorities to take action,' they said.Tottenham added: 'We have been made aware of the utterly reprehensible online racist abuse directed at Heung-Min Son during today's match, which has been reported by the club.Anti-racism group Kick It Out earlier this month demanded meaningful reforms after Brentford striker Ivan Toney was subjected to racial abuse on Instagram.Toney was targeted after his controversial equaliser against Arsenal, which should have been ruled out by VAR for offside against team-mate Christian Norgaard.The Brentford forward revealed in October last year he had been abused on Instagram after scoring both goals in a 2-0 league victory over Brighton.Meta, the parent company of Instagram and Facebook, condemned the abuse at the time, but said it could not take take action because the message had not been reported within the app.Police investigated and Antonio Neill, 24, of Blyth, Northumberland, admitted a charge of sending an offensive message to Toney at Newcastle Magistrates Court in January.",
            category: SportType.football,
            viewCount: 1200,
            timestamp: DateTime(2023, 2, 19)),
        Report(
            id: 101,
            header:
                "Barcelona re-established their eight-point lead at the top of La Liga thanks to a routine win over struggling Cadiz.",
            body:
                "The abuse occurred during Sunday's 2-0 Premier League victory over West Ham, during which substitute Son scored Spurs' second goal.Tottenham posted on Twitter saying they had reported the abuse towards Son.'We stand with Sonny and once again call on the social media companies and authorities to take action,' they said.Tottenham added: 'We have been made aware of the utterly reprehensible online racist abuse directed at Heung-Min Son during today's match, which has been reported by the club.Anti-racism group Kick It Out earlier this month demanded meaningful reforms after Brentford striker Ivan Toney was subjected to racial abuse on Instagram.Toney was targeted after his controversial equaliser against Arsenal, which should have been ruled out by VAR for offside against team-mate Christian Norgaard.The Brentford forward revealed in October last year he had been abused on Instagram after scoring both goals in a 2-0 league victory over Brighton.Meta, the parent company of Instagram and Facebook, condemned the abuse at the time, but said it could not take take action because the message had not been reported within the app.Police investigated and Antonio Neill, 24, of Blyth, Northumberland, admitted a charge of sending an offensive message to Toney at Newcastle Magistrates Court in January.",
            category: SportType.football,
            viewCount: 1300,
            timestamp: DateTime(2023, 2, 15)),
        Report(
            id: 102,
            header:
                "NBA Slam Dunk Contest: Mac McClung signs for Philadelphia 76ers and 'saves' event",
            body:
                "The abuse occurred during Sunday's 2-0 Premier League victory over West Ham, during which substitute Son scored Spurs' second goal.Tottenham posted on Twitter saying they had reported the abuse towards Son.'We stand with Sonny and once again call on the social media companies and authorities to take action,' they said.Tottenham added: 'We have been made aware of the utterly reprehensible online racist abuse directed at Heung-Min Son during today's match, which has been reported by the club.Anti-racism group Kick It Out earlier this month demanded meaningful reforms after Brentford striker Ivan Toney was subjected to racial abuse on Instagram.Toney was targeted after his controversial equaliser against Arsenal, which should have been ruled out by VAR for offside against team-mate Christian Norgaard.The Brentford forward revealed in October last year he had been abused on Instagram after scoring both goals in a 2-0 league victory over Brighton.Meta, the parent company of Instagram and Facebook, condemned the abuse at the time, but said it could not take take action because the message had not been reported within the app.Police investigated and Antonio Neill, 24, of Blyth, Northumberland, admitted a charge of sending an offensive message to Toney at Newcastle Magistrates Court in January.",
            category: SportType.basketball,
            viewCount: 1300,
            timestamp: DateTime(2023, 2, 15)),
        Report(
            id: 103,
            header:
                "Marcus Rashford scored twice to continue his hot streak and help Manchester United overcome Leicester in the Premier League.",
            body:
                "The abuse occurred during Sunday's 2-0 Premier League victory over West Ham, during which substitute Son scored Spurs' second goal.Tottenham posted on Twitter saying they had reported the abuse towards Son.'We stand with Sonny and once again call on the social media companies and authorities to take action,' they said.Tottenham added: 'We have been made aware of the utterly reprehensible online racist abuse directed at Heung-Min Son during today's match, which has been reported by the club.Anti-racism group Kick It Out earlier this month demanded meaningful reforms after Brentford striker Ivan Toney was subjected to racial abuse on Instagram.Toney was targeted after his controversial equaliser against Arsenal, which should have been ruled out by VAR for offside against team-mate Christian Norgaard.The Brentford forward revealed in October last year he had been abused on Instagram after scoring both goals in a 2-0 league victory over Brighton.Meta, the parent company of Instagram and Facebook, condemned the abuse at the time, but said it could not take take action because the message had not been reported within the app.Police investigated and Antonio Neill, 24, of Blyth, Northumberland, admitted a charge of sending an offensive message to Toney at Newcastle Magistrates Court in January.",
            category: SportType.football,
            viewCount: 1300,
            timestamp: DateTime(2023, 2, 20)),
        Report(
            id: 104,
            header:
                "Arsenal 'can achieve everything' after reigniting title hopes at Aston Villa - Oleksandr Zinchenko",
            body:
                "The abuse occurred during Sunday's 2-0 Premier League victory over West Ham, during which substitute Son scored Spurs' second goal.Tottenham posted on Twitter saying they had reported the abuse towards Son.'We stand with Sonny and once again call on the social media companies and authorities to take action,' they said.Tottenham added: 'We have been made aware of the utterly reprehensible online racist abuse directed at Heung-Min Son during today's match, which has been reported by the club.Anti-racism group Kick It Out earlier this month demanded meaningful reforms after Brentford striker Ivan Toney was subjected to racial abuse on Instagram.Toney was targeted after his controversial equaliser against Arsenal, which should have been ruled out by VAR for offside against team-mate Christian Norgaard.The Brentford forward revealed in October last year he had been abused on Instagram after scoring both goals in a 2-0 league victory over Brighton.Meta, the parent company of Instagram and Facebook, condemned the abuse at the time, but said it could not take take action because the message had not been reported within the app.Police investigated and Antonio Neill, 24, of Blyth, Northumberland, admitted a charge of sending an offensive message to Toney at Newcastle Magistrates Court in January.",
            category: SportType.football,
            viewCount: 1300,
            timestamp: DateTime(2023, 2, 20)),
      ];
}
