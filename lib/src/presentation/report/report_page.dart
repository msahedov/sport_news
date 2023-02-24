import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';

import 'package:sport_news/src/core/enum/sport_types.dart';
import 'package:sport_news/src/core/theme/colors.dart';
import 'package:sport_news/src/data/news/local_data_source.dart';
import 'package:sport_news/src/data/news/model.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({Key? key, required this.report}) : super(key: key);
  final Report report;

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key('report_page_scaffold'),
      backgroundColor: appColorGrey,
      body: NestedScrollView(
          headerSliverBuilder: (context, inner) {
            return [
              SliverAppBar(
                key: const Key('report_page_app_bar'),
                backgroundColor: inner ? appColorBlack : Colors.transparent,
                title: inner ? Text(widget.report.header ?? '') : const SizedBox.shrink(),
                expandedHeight: 200,
                pinned: true,
                floating: true,
                leading: const BackButton(),
                actions: [
                  IconButton(onPressed: shareReport, icon: const Icon(Icons.share_outlined))
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/news/${widget.report.id}.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ];
          },
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    color: appColorYellow,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.only(bottom: 15),
                    child: Text(
                      widget.report.category?.stringValue ?? '',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(color: appColorWhite),
                    )),
                Text(widget.report.header ?? '',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: appColorWhiteAccent)),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 25),
                  child: Row(
                    children: [
                      Row(children: [
                        const Icon(Icons.calendar_today, color: appColorBlack, size: 15),
                        const SizedBox(width: 10),
                        Text(DateFormat('dd MMMM yyyy').format(widget.report.timestamp!).toString(),
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(color: appColorBlack))
                      ]),
                      const SizedBox(width: 20),
                      Row(children: [
                        const Icon(Icons.visibility, color: appColorBlack, size: 15),
                        const SizedBox(width: 10),
                        Text(widget.report.viewCount.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(color: appColorBlack))
                      ]),
                    ],
                  ),
                ),
                Text(widget.report.body ?? '',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        wordSpacing: 2,
                        height: 1.5,
                        letterSpacing: .8,
                        color: appColorWhiteAccent)),
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
          key: const Key('report_page_bookmark_button'),
          backgroundColor: appColorBlack,
          onPressed: addOrRemoveBookmark,
          child: LocalNewsDataSource.bookmarks.value.contains(widget.report)
              ? const Icon(Icons.bookmark, color: appColorYellow)
              : const Icon(Icons.bookmark_outline)),
    );
  }

  shareReport() async {
    await Share.share(widget.report.toString(), subject: widget.report.header);
  }

  addOrRemoveBookmark() {
    if (LocalNewsDataSource.bookmarks.value.contains(widget.report)) {
      setState(() {
        LocalNewsDataSource.bookmarks.value.remove(widget.report);
      });
    } else {
      setState(() {
        LocalNewsDataSource.bookmarks.value.add(widget.report);
      });
    }
  }
}
