import 'package:flutter/material.dart';
import 'package:sport_news/src/core/theme/colors.dart';
import 'package:sport_news/src/data/news/local_data_source.dart';
import 'package:sport_news/src/presentation/home/widgets/report_widget.dart';

class AppSearchDelegate extends SearchDelegate {
  @override
  TextStyle? get searchFieldStyle => TextStyle(color: appColorWhite);

  @override
  ThemeData appBarTheme(BuildContext context) {
    return super.appBarTheme(context).copyWith(
        scaffoldBackgroundColor: appColorBlack,
        appBarTheme: AppBarTheme(backgroundColor: appColorBlack));
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    var results =
        LocalNewsDataSource.allNews.where((element) => element.header!.contains(query)).toList();

    return ListView.separated(
        key: Key('search_page_news_list'),
        itemCount: results.length,
        itemBuilder: (context, index) {
          return ReportWidget(report: results[index]);
        },
        separatorBuilder: (context, index) => const Divider(
              height: 10,
              color: appColorGreyAccent,
            ));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    var results =
        LocalNewsDataSource.allNews.where((element) => element.header!.contains(query)).toList();
    if (query.length < 3) {
      return const SizedBox.shrink();
    } else {
      return ListView.separated(
          key: Key('search_page_news_list'),
          itemCount: results.length,
          itemBuilder: (context, index) {
            return ReportWidget(report: results[index]);
          },
          separatorBuilder: (context, index) => const Divider(
                height: 10,
                color: appColorGreyAccent,
              ));
    }
  }
}
