import 'package:flutter/material.dart';

class SizeReportingWidget extends StatefulWidget {
  final Widget child;
  final ValueChanged<Size> onSizeChange;

  SizeReportingWidget({
    required this.child,
    required this.onSizeChange,
  }) : super();

  @override
  _SizeReportingWidgetState createState() => _SizeReportingWidgetState();
}

class _SizeReportingWidgetState extends State<SizeReportingWidget> {
  Size? _oldSize;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback((_) => _notifySize());
    return widget.child;
  }

  void _notifySize() {
    if (!this.mounted) {
      return;
    }
    final size = context.size;
    if (_oldSize != size) {
      _oldSize = size!;
      widget.onSizeChange(size);
    }
  }
}
