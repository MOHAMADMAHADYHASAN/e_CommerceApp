import 'package:flutter/material.dart';

import 'my_app.dart';

void main() {
  /// widgets flutter binding
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // flutter Native  Splash
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(const MyApp());
}
