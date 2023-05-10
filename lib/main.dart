import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:prova/telas/acoes.dart';
import 'package:prova/telas/bitcoin.dart';
import 'package:prova/telas/moeda.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/moeda',
      routes: {
        '/moeda': (context) => const Moeda(),
        '/bitcoin': (context) => const Bitcoin(),
        '/acoes': (context) => const Acoes(),
      },
    );
  }
}
