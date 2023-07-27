import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//random number generate
int generateRandomNumber(int min, int max) {
  // Create an instance of Random class
  final random = Random();

  // Generate a random number between min and max (inclusive)
  return min + random.nextInt(max - min + 1);
}

class _HomePageState extends State<HomePage> {
  int secretNumber = generateRandomNumber(1, 10);
  int chances = 3;
  int guessx = 0;
  final TextEditingController _guesscontroller = TextEditingController();
  @override
  void _checkguess() {
    int? guess = (guessx);
    if (guess < 1 || guess > 10) {
      Navigator.pushNamed(context, '/wrong'); // Invalid input, do nothing
    }

    if (guess == secretNumber) {
      Navigator.pushNamed(context, '/correct');
    } else {
      chances--;
      if (chances == 0) {
        Navigator.pushNamed(context, '/gameover');
      } else {
        Navigator.pushNamed(context, '/wrong');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Guesss Game',
                style: TextStyle(color: Colors.white)),
            backgroundColor: const Color.fromARGB(255, 49, 159, 249)),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'assets/guess.png',
                    width: 250,
                    height: 250,
                  )),
              const SizedBox(height: 20),
              const Text(
                'I have a secret number in my mind (1 - 10). You have 3 chances to guess it .can you guss it ? ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 28),
              const Text('1 of 3 chances are taken ',
                  style: TextStyle(fontSize: 18)),
              Column(
                children: [
                  Container(
                    width: 360,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextField(
                        textAlign: TextAlign.left,
                        controller: _guesscontroller,
                        onChanged: (text) {
                          setState(() {
                            guessx = int.tryParse(text) ?? 0;
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 2,
                        decoration: const InputDecoration(
                          //enabledBorder: OutlineInputBorder(),
                          labelText: 'Enter your Random Number',
                          //border: Border.fromBorderSide(),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    // onPressed: () {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => const CorrectPage()));
                    // },
                    // child: const Text('Submit'),

                    onPressed: _checkguess,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    child: const Text('submit'),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                  )
                ],
              )
            ],
          )),
        ));
  }
}

class _guessController {}
