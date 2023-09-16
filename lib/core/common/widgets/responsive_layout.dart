import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  /// Returns [Row] or [Column] depending on the [isRow]
  const ResponsiveLayout({
    required this.isRow,
    required this.children,
    super.key,
    this.rowMainAxisAlignment = MainAxisAlignment.start,
    this.columnMainAxisAlignment = MainAxisAlignment.start,
    this.rowCrossAxisAlignment = CrossAxisAlignment.center,
    this.columnCrossAxisAlignment = CrossAxisAlignment.center,
    this.rowMainAxisSize = MainAxisSize.max,
    this.columnMainAxisSize = MainAxisSize.max,
  });

  final bool isRow;
  final List<Widget> children;
  final MainAxisAlignment rowMainAxisAlignment;
  final MainAxisAlignment columnMainAxisAlignment;
  final CrossAxisAlignment rowCrossAxisAlignment;
  final CrossAxisAlignment columnCrossAxisAlignment;
  final MainAxisSize rowMainAxisSize;
  final MainAxisSize columnMainAxisSize;

  @override
  Widget build(BuildContext context) {
    return isRow
        ? Row(
            mainAxisSize: rowMainAxisSize,
            mainAxisAlignment: rowMainAxisAlignment,
            crossAxisAlignment: rowCrossAxisAlignment,
            children: children,
          )
        : Column(
            mainAxisSize: columnMainAxisSize,
            mainAxisAlignment: columnMainAxisAlignment,
            crossAxisAlignment: columnCrossAxisAlignment,
            children: children,
          );
  }
}
