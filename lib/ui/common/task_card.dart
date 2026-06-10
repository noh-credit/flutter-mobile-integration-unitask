import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:unitask/app/theme/preview.dart';
import 'package:unitask/ui/common/subject_label.dart';

@AppThemePreview(group: 'Card', name: 'TaskCard')
Widget taskCardPreview() => Wrap(
  children: [
    TaskCard(
      checked: true,
      title: 'Flutter 개발',
      date: DateTime.now().copyWith(month: 6, day: 4),
      category: SubjectLabel(text: 'Flutter'),
    ),
  ],
);

class TaskCard extends StatelessWidget {
  final bool checked;
  final String title;
  final DateTime date;
  final VoidCallback? onSelected;
  final Function(bool? value)? onChecked;
  final Widget category;

  const TaskCard({
    super.key,
    required this.checked,
    required this.title,
    required this.date,
    this.onSelected,
    required this.category,
    this.onChecked,
  });

  @override
  Widget build(BuildContext context) {
    //TODO 아이콘 색상 변경은 아래 기준으로 바뀜
    // <= D-3 : 빨강
    // <= D-7 : 주황
    // > D-7 : 검정
    final dDay =
        date //
            .difference(DateTime.now())
            .inDays;
    final dDayColor = switch (dDay) {
      <= 3 => Colors.red, //3일 남음
      <= 7 => Colors.orange, // 7일 남은
      _ => Colors.black, // 14일 남음
    };

    return Card(
      child: Container(
        height: 120,
        padding: const .symmetric(vertical: 6, horizontal: 12),
        child: Column(
          mainAxisAlignment: .spaceBetween,
          crossAxisAlignment: .stretch,
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                category,
                Checkbox(
                  onChanged: onChecked,
                  value: checked,
                  visualDensity: .compact,
                  fillColor: .resolveWith((states) {
                    if (states.contains(WidgetState.selected)) {
                      return Colors.blue;
                    }
                    return Color(0xfff3f4f6);
                  }),
                  shape: RoundedRectangleBorder(borderRadius: .circular(5)),
                  side: BorderSide(color: Colors.transparent),
                  materialTapTargetSize: .shrinkWrap,
                ),
              ],
            ),

            Text(
              title,
              maxLines: 1,
              overflow: .ellipsis,
              style: TextStyle(fontWeight: .bold, fontSize: 15),
            ),
            // 긴 내용 생략을 위해 '...'으로 표현하는 것을 ellipsis라고 함

            Row(
              spacing: 5,
              children: [
                Icon(LucideIcons.calendarRange, size: 12, color: dDayColor),
                Text(
                  DateFormat('yyyy.MM.dd').format(date),
                  style: TextStyle(fontSize: 12, color: dDayColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}