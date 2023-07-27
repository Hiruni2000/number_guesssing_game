import 'package:flutter/material.dart';
import 'package:number_guesssing_game/pages/correct_guess.dart';
import 'package:number_guesssing_game/pages/home_page.dart';
import 'package:number_guesssing_game/pages/wrong_guess.dart';

import 'pages/game_over.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/correct': (context) => CorrectPage(data: generateRandomNumber(1, 10)),
        '/wrong': (context) => const WrongPage(),
        '/gameover': (context) => const GameOverPage(),
      },
    );
  }
}
