import 'package:flutter/material.dart';

extension SizedBoxExtension on num{
  Widget get widthbox => SizedBox(width: toDouble());
  Widget get heightbox => SizedBox(height: toDouble());
}