import 'package:flutter/material.dart';

extension SizeExtension on num {
  Widget get height => SizedBox(height: toDouble());
  Widget get width => SizedBox(width: toDouble());
}
