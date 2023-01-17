import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jarnama_app/firebase_options.dart';

import 'app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}
