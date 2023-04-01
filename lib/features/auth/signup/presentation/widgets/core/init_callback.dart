import 'package:after_layout/after_layout.dart';
import 'package:flutter/widgets.dart';
class CallbackCallerWidget extends StatefulWidget {
  CallbackCallerWidget({
    Key? key,
    required this.callBack,
    required this.child,
  }) : super(key: key);

  final Function() callBack;
  final Widget child;

  @override
  _CallbackCallerWidgetState createState() => _CallbackCallerWidgetState();

}

class _CallbackCallerWidgetState extends State<CallbackCallerWidget>
    with AfterLayoutMixin {

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance?.waitUntilFirstFrameRasterized;
    super.initState();
  }

  @override
  void afterFirstLayout(BuildContext context) {
    widget.callBack();
  }
}