import 'package:flutter/material.dart';

import 'package:sport_news/src/core/enum/sport_types.dart';
import 'package:sport_news/src/core/theme/colors.dart';
import 'package:sport_news/src/data/news/local_data_source.dart';
import 'package:sport_news/src/presentation/home/widgets/report_widget.dart';

class ReportListWidget extends StatelessWidget {
  const ReportListWidget({Key? key, required this.valueNotifier})
      : super(key: key);

  final ValueNotifier<SportType> valueNotifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<SportType>(
        valueListenable: valueNotifier,
        builder: (context, SportType type, Widget? child) {
          var newsByCategory = LocalNewsDataSource.allNews
              .where((element) => element.category == type)
              .toList();
          newsByCategory.sort((a, b) => b.timestamp!.compareTo(a.timestamp!));
          return ListView.separated(
              key: const Key('home_page_news_list'),
              padding: const EdgeInsets.only(top: 20),
              itemCount: newsByCategory.length,
              itemBuilder: (context, index) {
                return ReportWidget(report: newsByCategory[index]);
              },
              separatorBuilder: (context, index) => const Divider(
                    height: 10,
                    color: appColorGreyAccent,
                  ));
        });
  }
}
