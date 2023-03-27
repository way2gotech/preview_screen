import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/prescription_provider.dart';
import 'package:test_app/prescription_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PrescriptionProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => const PreviewScreen(),
        },
      ),
    );
  }
}
