import 'package:flutter/material.dart';

import 'package:sport_news/src/core/enum/sport_types.dart';
import 'package:sport_news/src/core/theme/colors.dart';
import 'package:sport_news/src/presentation/bookmark/bookmarks_page.dart';
import 'package:sport_news/src/presentation/search/search.dart';

import 'widgets/report_list_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final ValueNotifier<SportType> valueNotifier =
      ValueNotifier(SportType.football);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: SportType.values.length,
      child: Scaffold(
        key: const Key('home_page_scaffold'),
        backgroundColor: appColorBlack,
        appBar: AppBar(
          key: const Key('home_page_appbar'),
          backgroundColor: appColorBlack,
          title: const Text("Sport News"),
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: AppSearchDelegate(),
                  );
                },
                icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const BookmarksPage()));
                },
                icon: const Icon(Icons.bookmark_outline))
          ],
          bottom: TabBar(
            key: const Key('home_page_tabbar'),
            unselectedLabelColor: appColorGreyAccent,
            labelColor: appColorYellow,
            indicatorColor: appColorYellow,
            isScrollable: false,
            tabs: SportType.values
                .map((type) => Tab(
                      text: type.stringValue,
                    ))
                .toList(),
            onTap: (int index) {
              valueNotifier.value = SportType.values[index];
            },
          ),
        ),
        body: ReportListWidget(valueNotifier: valueNotifier),
      ),
    );
  }
}
