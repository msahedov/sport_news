import 'package:flutter/material.dart';

import 'package:sport_news/src/core/theme/colors.dart';
import 'package:sport_news/src/data/news/local_data_source.dart';
import 'package:sport_news/src/data/news/model.dart';
import 'package:sport_news/src/presentation/home/widgets/report_widget.dart';

class BookmarksPage extends StatefulWidget {
  const BookmarksPage({super.key});

  @override
  State<BookmarksPage> createState() => _BookmarksPageState();
}

class _BookmarksPageState extends State<BookmarksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key('bookmark_page_scaffold'),
      backgroundColor: appColorBlack,
      appBar: AppBar(
        key: Key('bookmark_page_appbar'),
        backgroundColor: appColorBlack,
        title: Text("Bookmarks"),
        leading: BackButton(),
      ),
      body: ValueListenableBuilder<List<Report>>(
          valueListenable: LocalNewsDataSource.bookmarks,
          builder: (context, List<Report> bookmarks, Widget? child) {
            return ListView.separated(
                key: Key('bookmark_report_list'),
                itemCount: bookmarks.length,
                itemBuilder: (context, index) {
                  return ReportWidget(report: bookmarks[index]);
                },
                separatorBuilder: (context, index) => const Divider(
                      height: 10,
                      color: appColorGreyAccent,
                    ));
          }),
    );
  }
}
