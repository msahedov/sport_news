import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:sport_news/src/core/theme/colors.dart';
import 'package:sport_news/src/data/news/model.dart';
import 'package:sport_news/src/presentation/report/report_page.dart';

class ReportWidget extends StatelessWidget {
  const ReportWidget({Key? key, required this.report}) : super(key: key);

  final Report report;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      key: Key('report_list_tile'),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ReportPage(report: report)));
      },
      leading: Image.asset('assets/news/${report.id}.jpg'),
      title: Text(
        report.header ?? '',
        style: Theme.of(context).textTheme.titleMedium?.copyWith(color: appColorWhite),
      ),
      subtitle: Text(
        DateFormat('dd MMMM yyyy').format(report.timestamp!).toString(),
        style: Theme.of(context).textTheme.subtitle2?.copyWith(color: appColorGrey),
      ),
      minLeadingWidth: 100,
      isThreeLine: true,
    );
  }
}
