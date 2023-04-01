import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mdcin_ca/core/presentation/widgets/app_widget.dart';
import 'configure_di.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      //systemNavigationBarDividerColor: Colors.white,
      //systemNavigationBarIconBrightness: Brightness.dark,
      //systemNavigationBarColor: Colors.white,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const AppWidget());
}