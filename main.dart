import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// StatelessWidget is to create a User interface that is going to change over a time

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Stateless and Statefull widget',
          ),
        ),
        body: const Center(
            child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome to the App',
              style: TextStyle(fontSize: 30.0),
            ),
            SizedBox(
              height: 20,
            ),
            Buttons(),
            SizedBox(
              height: 20,
            ),
            FooterWidget(),
          ],
        )),
      ),
    );
  }
}

// Statefull widget to create a User interface that will change over a time

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  var maleCounter = 0;
  var femaleCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'No of Males $maleCounter',
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            'No of Females $femaleCounter',
            style: const TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 20),
          MaterialButton(
            onPressed: () {
              setState(() {
                maleCounter++;
              });
            },
            height: 50,
            minWidth: 200,
            color: Colors.blue,
            elevation: 10,
            child: const Text(
              'Male +',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20),
          MaterialButton(
            onPressed: () {
              setState(() {
                femaleCounter++;
              });
            },
            height: 50,
            minWidth: 200,
            color: Colors.blue,
            elevation: 10,
            child: const Text(
              'Female +',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.arrow_back),
            Text('Developed By Code Warrior'),
            Icon(Icons.arrow_forward),
          ],
        )
      ],
    );
  }
}
