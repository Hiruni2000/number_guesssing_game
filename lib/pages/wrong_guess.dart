import 'package:flutter/material.dart';

class WrongPage extends StatelessWidget {
  const WrongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          title: const Text('Gess Game', style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 49, 159, 249)),
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
                const Text('Sorry !Wrong guess.please try again.....',
                    style: TextStyle(fontSize: 18)),
                const SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 49, 159, 249),
                      foregroundColor: Colors.white,
                      fixedSize: const Size(250, 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  child: const Text('Try Again'),
                )
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.pink[100],
    );
  }
}
