import 'package:flutter/material.dart';

class CorrectPage extends StatelessWidget {
  int data;

  CorrectPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text('Guess Game', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue[200],
      ),
      // body: const Center(
      //   child: Text('Yes! You gusseedit right.My secret number is ',
      //       style: TextStyle(
      //         fontSize: 18,
      //       )),

      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 250,
                ),
                const Text('Yes!You gusseedit right.My secret number is ',
                    style: TextStyle(fontSize: 18)),
                Text('$data'),
                const SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.popUntil(context, ModalRoute.withName('/'));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 49, 159, 249),
                      foregroundColor: Colors.white,
                      fixedSize: const Size(250, 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  child: const Text('Start the Game Again'),
                )
              ],
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 177, 232, 178),
    );
  }
}
