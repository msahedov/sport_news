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
        Report(
            id: 105,
            header:
                "Angel di Maria scored a hat-trick to give Juventus a comfortable win at Nantes and take the Italian side into the last 16 of the Europa League.",
            body:
                "The abuse occurred during Sunday's 2-0 Premier League victory over West Ham, during which substitute Son scored Spurs' second goal.Tottenham posted on Twitter saying they had reported the abuse towards Son.'We stand with Sonny and once again call on the social media companies and authorities to take action,' they said.Tottenham added: 'We have been made aware of the utterly reprehensible online racist abuse directed at Heung-Min Son during today's match, which has been reported by the club.Anti-racism group Kick It Out earlier this month demanded meaningful reforms after Brentford striker Ivan Toney was subjected to racial abuse on Instagram.Toney was targeted after his controversial equaliser against Arsenal, which should have been ruled out by VAR for offside against team-mate Christian Norgaard.The Brentford forward revealed in October last year he had been abused on Instagram after scoring both goals in a 2-0 league victory over Brighton.Meta, the parent company of Instagram and Facebook, condemned the abuse at the time, but said it could not take take action because the message had not been reported within the app.Police investigated and Antonio Neill, 24, of Blyth, Northumberland, admitted a charge of sending an offensive message to Toney at Newcastle Magistrates Court in January.",
            category: SportType.football,
            viewCount: 1300,
            timestamp: DateTime(2023, 2, 24)),
        Report(
            id: 106,
            header:
                "Goals from Brazilians Fred and Antony led Manchester United past Barcelona at Old Trafford to reach the last 16 of the Europa League.",
            body:
                "The abuse occurred during Sunday's 2-0 Premier League victory over West Ham, during which substitute Son scored Spurs' second goal.Tottenham posted on Twitter saying they had reported the abuse towards Son.'We stand with Sonny and once again call on the social media companies and authorities to take action,' they said.Tottenham added: 'We have been made aware of the utterly reprehensible online racist abuse directed at Heung-Min Son during today's match, which has been reported by the club.Anti-racism group Kick It Out earlier this month demanded meaningful reforms after Brentford striker Ivan Toney was subjected to racial abuse on Instagram.Toney was targeted after his controversial equaliser against Arsenal, which should have been ruled out by VAR for offside against team-mate Christian Norgaard.The Brentford forward revealed in October last year he had been abused on Instagram after scoring both goals in a 2-0 league victory over Brighton.Meta, the parent company of Instagram and Facebook, condemned the abuse at the time, but said it could not take take action because the message had not been reported within the app.Police investigated and Antonio Neill, 24, of Blyth, Northumberland, admitted a charge of sending an offensive message to Toney at Newcastle Magistrates Court in January.",
            category: SportType.football,
            viewCount: 1500,
            timestamp: DateTime(2023, 2, 24)),
        Report(
            id: 107,
            header:
                "Spain's 2010 World Cup-winner Sergio Ramos says he is retiring from international football with a 'heavy heart' after being told he will not be picked by new boss Luis de la Fuente.",
            body:
                "The abuse occurred during Sunday's 2-0 Premier League victory over West Ham, during which substitute Son scored Spurs' second goal.Tottenham posted on Twitter saying they had reported the abuse towards Son.'We stand with Sonny and once again call on the social media companies and authorities to take action,' they said.Tottenham added: 'We have been made aware of the utterly reprehensible online racist abuse directed at Heung-Min Son during today's match, which has been reported by the club.Anti-racism group Kick It Out earlier this month demanded meaningful reforms after Brentford striker Ivan Toney was subjected to racial abuse on Instagram.Toney was targeted after his controversial equaliser against Arsenal, which should have been ruled out by VAR for offside against team-mate Christian Norgaard.The Brentford forward revealed in October last year he had been abused on Instagram after scoring both goals in a 2-0 league victory over Brighton.Meta, the parent company of Instagram and Facebook, condemned the abuse at the time, but said it could not take take action because the message had not been reported within the app.Police investigated and Antonio Neill, 24, of Blyth, Northumberland, admitted a charge of sending an offensive message to Toney at Newcastle Magistrates Court in January.",
            category: SportType.football,
            viewCount: 1500,
            timestamp: DateTime(2023, 2, 24)),
        Report(
            id: 108,
            header:
                "Premier League & Carabao Cup final predictions: Chris Sutton faces Those Damn Crows drummer & Man Utd fan Ronnie Huxford",
            body:
                "The abuse occurred during Sunday's 2-0 Premier League victory over West Ham, during which substitute Son scored Spurs' second goal.Tottenham posted on Twitter saying they had reported the abuse towards Son.'We stand with Sonny and once again call on the social media companies and authorities to take action,' they said.Tottenham added: 'We have been made aware of the utterly reprehensible online racist abuse directed at Heung-Min Son during today's match, which has been reported by the club.Anti-racism group Kick It Out earlier this month demanded meaningful reforms after Brentford striker Ivan Toney was subjected to racial abuse on Instagram.Toney was targeted after his controversial equaliser against Arsenal, which should have been ruled out by VAR for offside against team-mate Christian Norgaard.The Brentford forward revealed in October last year he had been abused on Instagram after scoring both goals in a 2-0 league victory over Brighton.Meta, the parent company of Instagram and Facebook, condemned the abuse at the time, but said it could not take take action because the message had not been reported within the app.Police investigated and Antonio Neill, 24, of Blyth, Northumberland, admitted a charge of sending an offensive message to Toney at Newcastle Magistrates Court in January.",
            category: SportType.football,
            viewCount: 1500,
            timestamp: DateTime(2023, 2, 23)),
        Report(
            id: 109,
            header:
                "Sevilla goalkeeper Marko Dmitrovic was attacked by a pitch invader as PSV Eindhoven beat their Spanish opponents on the night but lost 3-2 on aggregate.",
            body:
                "The abuse occurred during Sunday's 2-0 Premier League victory over West Ham, during which substitute Son scored Spurs' second goal.Tottenham posted on Twitter saying they had reported the abuse towards Son.'We stand with Sonny and once again call on the social media companies and authorities to take action,' they said.Tottenham added: 'We have been made aware of the utterly reprehensible online racist abuse directed at Heung-Min Son during today's match, which has been reported by the club.Anti-racism group Kick It Out earlier this month demanded meaningful reforms after Brentford striker Ivan Toney was subjected to racial abuse on Instagram.Toney was targeted after his controversial equaliser against Arsenal, which should have been ruled out by VAR for offside against team-mate Christian Norgaard.The Brentford forward revealed in October last year he had been abused on Instagram after scoring both goals in a 2-0 league victory over Brighton.Meta, the parent company of Instagram and Facebook, condemned the abuse at the time, but said it could not take take action because the message had not been reported within the app.Police investigated and Antonio Neill, 24, of Blyth, Northumberland, admitted a charge of sending an offensive message to Toney at Newcastle Magistrates Court in January.",
            category: SportType.football,
            viewCount: 1500,
            timestamp: DateTime(2023, 2, 23)),
        Report(
            id: 110,
            header:
                "Leeds United and Everton have been charged over the mass brawl during their Premier League game last weekend.",
            body:
                "The abuse occurred during Sunday's 2-0 Premier League victory over West Ham, during which substitute Son scored Spurs' second goal.Tottenham posted on Twitter saying they had reported the abuse towards Son.'We stand with Sonny and once again call on the social media companies and authorities to take action,' they said.Tottenham added: 'We have been made aware of the utterly reprehensible online racist abuse directed at Heung-Min Son during today's match, which has been reported by the club.Anti-racism group Kick It Out earlier this month demanded meaningful reforms after Brentford striker Ivan Toney was subjected to racial abuse on Instagram.Toney was targeted after his controversial equaliser against Arsenal, which should have been ruled out by VAR for offside against team-mate Christian Norgaard.The Brentford forward revealed in October last year he had been abused on Instagram after scoring both goals in a 2-0 league victory over Brighton.Meta, the parent company of Instagram and Facebook, condemned the abuse at the time, but said it could not take take action because the message had not been reported within the app.Police investigated and Antonio Neill, 24, of Blyth, Northumberland, admitted a charge of sending an offensive message to Toney at Newcastle Magistrates Court in January.",
            category: SportType.football,
            viewCount: 1500,
            timestamp: DateTime(2023, 2, 23)),
        Report(
            id: 111,
            header:
                "English football's new independent regulator cannot be a 'sledgehammer', says Premier League chief executive Richard Masters.",
            body:
                "The abuse occurred during Sunday's 2-0 Premier League victory over West Ham, during which substitute Son scored Spurs' second goal.Tottenham posted on Twitter saying they had reported the abuse towards Son.'We stand with Sonny and once again call on the social media companies and authorities to take action,' they said.Tottenham added: 'We have been made aware of the utterly reprehensible online racist abuse directed at Heung-Min Son during today's match, which has been reported by the club.Anti-racism group Kick It Out earlier this month demanded meaningful reforms after Brentford striker Ivan Toney was subjected to racial abuse on Instagram.Toney was targeted after his controversial equaliser against Arsenal, which should have been ruled out by VAR for offside against team-mate Christian Norgaard.The Brentford forward revealed in October last year he had been abused on Instagram after scoring both goals in a 2-0 league victory over Brighton.Meta, the parent company of Instagram and Facebook, condemned the abuse at the time, but said it could not take take action because the message had not been reported within the app.Police investigated and Antonio Neill, 24, of Blyth, Northumberland, admitted a charge of sending an offensive message to Toney at Newcastle Magistrates Court in January.",
            category: SportType.football,
            viewCount: 1500,
            timestamp: DateTime(2023, 2, 24)),
        Report(
            id: 112,
            header:
                "NBA on the BBC: The big questions as NBA returns after All-Star break",
            body:
                "The abuse occurred during Sunday's 2-0 Premier League victory over West Ham, during which substitute Son scored Spurs' second goal.Tottenham posted on Twitter saying they had reported the abuse towards Son.'We stand with Sonny and once again call on the social media companies and authorities to take action,' they said.Tottenham added: 'We have been made aware of the utterly reprehensible online racist abuse directed at Heung-Min Son during today's match, which has been reported by the club.Anti-racism group Kick It Out earlier this month demanded meaningful reforms after Brentford striker Ivan Toney was subjected to racial abuse on Instagram.Toney was targeted after his controversial equaliser against Arsenal, which should have been ruled out by VAR for offside against team-mate Christian Norgaard.The Brentford forward revealed in October last year he had been abused on Instagram after scoring both goals in a 2-0 league victory over Brighton.Meta, the parent company of Instagram and Facebook, condemned the abuse at the time, but said it could not take take action because the message had not been reported within the app.Police investigated and Antonio Neill, 24, of Blyth, Northumberland, admitted a charge of sending an offensive message to Toney at Newcastle Magistrates Court in January.",
            category: SportType.basketball,
            viewCount: 1500,
            timestamp: DateTime(2023, 2, 22)),
        Report(
            id: 113,
            header:
                "Jayson Tatum scored an All-Star Game record 55 points to lead Team Giannis to a 184-175 victory over Team LeBron in the NBA's annual showcase.",
            body:
                "The abuse occurred during Sunday's 2-0 Premier League victory over West Ham, during which substitute Son scored Spurs' second goal.Tottenham posted on Twitter saying they had reported the abuse towards Son.'We stand with Sonny and once again call on the social media companies and authorities to take action,' they said.Tottenham added: 'We have been made aware of the utterly reprehensible online racist abuse directed at Heung-Min Son during today's match, which has been reported by the club.Anti-racism group Kick It Out earlier this month demanded meaningful reforms after Brentford striker Ivan Toney was subjected to racial abuse on Instagram.Toney was targeted after his controversial equaliser against Arsenal, which should have been ruled out by VAR for offside against team-mate Christian Norgaard.The Brentford forward revealed in October last year he had been abused on Instagram after scoring both goals in a 2-0 league victory over Brighton.Meta, the parent company of Instagram and Facebook, condemned the abuse at the time, but said it could not take take action because the message had not been reported within the app.Police investigated and Antonio Neill, 24, of Blyth, Northumberland, admitted a charge of sending an offensive message to Toney at Newcastle Magistrates Court in January.",
            category: SportType.basketball,
            viewCount: 1500,
            timestamp: DateTime(2023, 2, 22)),
        Report(
            id: 114,
            header:
                "LGBT+ History Month: Wheelchair basketball star Bo Kramer on different attitudes",
            body:
                "The abuse occurred during Sunday's 2-0 Premier League victory over West Ham, during which substitute Son scored Spurs' second goal.Tottenham posted on Twitter saying they had reported the abuse towards Son.'We stand with Sonny and once again call on the social media companies and authorities to take action,' they said.Tottenham added: 'We have been made aware of the utterly reprehensible online racist abuse directed at Heung-Min Son during today's match, which has been reported by the club.Anti-racism group Kick It Out earlier this month demanded meaningful reforms after Brentford striker Ivan Toney was subjected to racial abuse on Instagram.Toney was targeted after his controversial equaliser against Arsenal, which should have been ruled out by VAR for offside against team-mate Christian Norgaard.The Brentford forward revealed in October last year he had been abused on Instagram after scoring both goals in a 2-0 league victory over Brighton.Meta, the parent company of Instagram and Facebook, condemned the abuse at the time, but said it could not take take action because the message had not been reported within the app.Police investigated and Antonio Neill, 24, of Blyth, Northumberland, admitted a charge of sending an offensive message to Toney at Newcastle Magistrates Court in January.",
            category: SportType.basketball,
            viewCount: 1500,
            timestamp: DateTime(2023, 2, 19)),
        Report(
            id: 115,
            header:
                "Great Britain secured a place at June's EuroBasket finals by beating Portugal 78-48 in their last Group G qualifier.",
            body:
                "The abuse occurred during Sunday's 2-0 Premier League victory over West Ham, during which substitute Son scored Spurs' second goal.Tottenham posted on Twitter saying they had reported the abuse towards Son.'We stand with Sonny and once again call on the social media companies and authorities to take action,' they said.Tottenham added: 'We have been made aware of the utterly reprehensible online racist abuse directed at Heung-Min Son during today's match, which has been reported by the club.Anti-racism group Kick It Out earlier this month demanded meaningful reforms after Brentford striker Ivan Toney was subjected to racial abuse on Instagram.Toney was targeted after his controversial equaliser against Arsenal, which should have been ruled out by VAR for offside against team-mate Christian Norgaard.The Brentford forward revealed in October last year he had been abused on Instagram after scoring both goals in a 2-0 league victory over Brighton.Meta, the parent company of Instagram and Facebook, condemned the abuse at the time, but said it could not take take action because the message had not been reported within the app.Police investigated and Antonio Neill, 24, of Blyth, Northumberland, admitted a charge of sending an offensive message to Toney at Newcastle Magistrates Court in January.",
            category: SportType.basketball,
            viewCount: 1500,
            timestamp: DateTime(2023, 2, 21)),
        Report(
            id: 116,
            header:
                "The LA Lakers ended a run of three defeats with a narrow 109-103 win over the Golden State Warriors despite missing LeBron James.",
            body:
                "The abuse occurred during Sunday's 2-0 Premier League victory over West Ham, during which substitute Son scored Spurs' second goal.Tottenham posted on Twitter saying they had reported the abuse towards Son.'We stand with Sonny and once again call on the social media companies and authorities to take action,' they said.Tottenham added: 'We have been made aware of the utterly reprehensible online racist abuse directed at Heung-Min Son during today's match, which has been reported by the club.Anti-racism group Kick It Out earlier this month demanded meaningful reforms after Brentford striker Ivan Toney was subjected to racial abuse on Instagram.Toney was targeted after his controversial equaliser against Arsenal, which should have been ruled out by VAR for offside against team-mate Christian Norgaard.The Brentford forward revealed in October last year he had been abused on Instagram after scoring both goals in a 2-0 league victory over Brighton.Meta, the parent company of Instagram and Facebook, condemned the abuse at the time, but said it could not take take action because the message had not been reported within the app.Police investigated and Antonio Neill, 24, of Blyth, Northumberland, admitted a charge of sending an offensive message to Toney at Newcastle Magistrates Court in January.",
            category: SportType.basketball,
            viewCount: 1500,
            timestamp: DateTime(2023, 2, 24)),
        Report(
            id: 117,
            header:
                "Brooklyn Nets guard Cam Thomas has been fined 40,000 (£33,000) by the NBA after he used 'derogatory and disparaging language' during a live television interview.",
            body:
                "The abuse occurred during Sunday's 2-0 Premier League victory over West Ham, during which substitute Son scored Spurs' second goal.Tottenham posted on Twitter saying they had reported the abuse towards Son.'We stand with Sonny and once again call on the social media companies and authorities to take action,' they said.Tottenham added: 'We have been made aware of the utterly reprehensible online racist abuse directed at Heung-Min Son during today's match, which has been reported by the club.Anti-racism group Kick It Out earlier this month demanded meaningful reforms after Brentford striker Ivan Toney was subjected to racial abuse on Instagram.Toney was targeted after his controversial equaliser against Arsenal, which should have been ruled out by VAR for offside against team-mate Christian Norgaard.The Brentford forward revealed in October last year he had been abused on Instagram after scoring both goals in a 2-0 league victory over Brighton.Meta, the parent company of Instagram and Facebook, condemned the abuse at the time, but said it could not take take action because the message had not been reported within the app.Police investigated and Antonio Neill, 24, of Blyth, Northumberland, admitted a charge of sending an offensive message to Toney at Newcastle Magistrates Court in January.",
            category: SportType.basketball,
            viewCount: 1500,
            timestamp: DateTime(2023, 2, 24)),
        Report(
            id: 118,
            header:
                "Two-time NBA champion Kevin Durant has joined the Phoenix Suns in a trade from the Brooklyn Nets.",
            body:
                "The abuse occurred during Sunday's 2-0 Premier League victory over West Ham, during which substitute Son scored Spurs' second goal.Tottenham posted on Twitter saying they had reported the abuse towards Son.'We stand with Sonny and once again call on the social media companies and authorities to take action,' they said.Tottenham added: 'We have been made aware of the utterly reprehensible online racist abuse directed at Heung-Min Son during today's match, which has been reported by the club.Anti-racism group Kick It Out earlier this month demanded meaningful reforms after Brentford striker Ivan Toney was subjected to racial abuse on Instagram.Toney was targeted after his controversial equaliser against Arsenal, which should have been ruled out by VAR for offside against team-mate Christian Norgaard.The Brentford forward revealed in October last year he had been abused on Instagram after scoring both goals in a 2-0 league victory over Brighton.Meta, the parent company of Instagram and Facebook, condemned the abuse at the time, but said it could not take take action because the message had not been reported within the app.Police investigated and Antonio Neill, 24, of Blyth, Northumberland, admitted a charge of sending an offensive message to Toney at Newcastle Magistrates Court in January.",
            category: SportType.basketball,
            viewCount: 1500,
            timestamp: DateTime(2023, 2, 23)),
        Report(
            id: 119,
            header:
                "The Milwaukee Bucks extended their winning streak to 10 matches with a Giannis Antetokounmpo-inspired 116-109 victory over the Los Angeles Clippers.",
            body:
                "The abuse occurred during Sunday's 2-0 Premier League victory over West Ham, during which substitute Son scored Spurs' second goal.Tottenham posted on Twitter saying they had reported the abuse towards Son.'We stand with Sonny and once again call on the social media companies and authorities to take action,' they said.Tottenham added: 'We have been made aware of the utterly reprehensible online racist abuse directed at Heung-Min Son during today's match, which has been reported by the club.Anti-racism group Kick It Out earlier this month demanded meaningful reforms after Brentford striker Ivan Toney was subjected to racial abuse on Instagram.Toney was targeted after his controversial equaliser against Arsenal, which should have been ruled out by VAR for offside against team-mate Christian Norgaard.The Brentford forward revealed in October last year he had been abused on Instagram after scoring both goals in a 2-0 league victory over Brighton.Meta, the parent company of Instagram and Facebook, condemned the abuse at the time, but said it could not take take action because the message had not been reported within the app.Police investigated and Antonio Neill, 24, of Blyth, Northumberland, admitted a charge of sending an offensive message to Toney at Newcastle Magistrates Court in January.",
            category: SportType.basketball,
            viewCount: 1500,
            timestamp: DateTime(2023, 2, 24)),
        Report(
            id: 120,
            header:
                "Want all the biggest sports news, analysis and scores sent direct to your phone or tablet? Then download the BBC Sport app.",
            body:
                "The abuse occurred during Sunday's 2-0 Premier League victory over West Ham, during which substitute Son scored Spurs' second goal.Tottenham posted on Twitter saying they had reported the abuse towards Son.'We stand with Sonny and once again call on the social media companies and authorities to take action,' they said.Tottenham added: 'We have been made aware of the utterly reprehensible online racist abuse directed at Heung-Min Son during today's match, which has been reported by the club.Anti-racism group Kick It Out earlier this month demanded meaningful reforms after Brentford striker Ivan Toney was subjected to racial abuse on Instagram.Toney was targeted after his controversial equaliser against Arsenal, which should have been ruled out by VAR for offside against team-mate Christian Norgaard.The Brentford forward revealed in October last year he had been abused on Instagram after scoring both goals in a 2-0 league victory over Brighton.Meta, the parent company of Instagram and Facebook, condemned the abuse at the time, but said it could not take take action because the message had not been reported within the app.Police investigated and Antonio Neill, 24, of Blyth, Northumberland, admitted a charge of sending an offensive message to Toney at Newcastle Magistrates Court in January.",
            category: SportType.basketball,
            viewCount: 1500,
            timestamp: DateTime(2023, 2, 24)),
      ];
}
