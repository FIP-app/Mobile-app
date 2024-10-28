import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto/providers/TestProvider.dart';
import 'package:proyecto/routes/load.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TestProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fi p',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
          useMaterial3: true
        ),
        initialRoute: '/home',
        routes: {
          '/home': (context) => const Load()
        },
      ),
    )
  );
}