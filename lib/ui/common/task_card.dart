import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:unitask/app/theme/preview.dart';

@AppThemePreview(group: 'Items', name: 'TaskCard')
Widget chipPreview() => Wrap(
  children: [
    TaskCard(
      checked: false,
      title: 'Flutter 개발',
      date: DateTime.now(),
      category: Container(width: 30, height: 15, color: Colors.blue),
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
    return Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              category,
              Checkbox(value: checked, onChanged: onChecked),
            ],
          ),
          Text(title),
          Row(
            spacing: 5,
            children: [
              Icon(
                LucideIcons.calendar,
                //TODO 아이콘 색상 변경시점은 아래의 기준에 따름
                // <= D-3 : 빨강
                // <= D-7 : 주황
                // > D-7 : 검정
              ),
              Text(
                '', 
              ),
            ],
          ),
        ],
      ),
    );
  }
}