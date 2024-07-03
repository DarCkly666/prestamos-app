import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:prestamos/firebase_options.dart';
import 'package:prestamos/src/router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final String appName = "Préstamos";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      routes: routes(context),
      initialRoute: '/',
    );
  }
}
