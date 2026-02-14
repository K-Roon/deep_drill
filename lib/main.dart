import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'features/monetization/data/admob_initializer.dart';
import 'app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AdMobInitializer.ensureInitialized();
  runApp(const ProviderScope(child: DeepDrillApp()));
}
