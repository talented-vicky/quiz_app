import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// } // function returns nth hence its type is void

void main() => runApp(MyApp());

// runApp prompts flutter to draw sth unto the screen and hence calls the
// build function/method responsible for returning a new widget which will
// be drawn onto the screen
class MyApp extends StatelessWidget {
  MyApp({super.key});
  // this is a constructor func & passing its params in {} make them optional

  void answer() => print('Clicked on an answer');
  var questions = ['What are you up to?', 'Are you coming over tonight?'];
  var options = ['Nthing much', 'Just here', 'laying down'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
          elevation: 0,
        ),
        body: Column(children: [
          Text(questions[0]),
          ElevatedButton(
            onPressed: () => answer(),
            child: Text(options[0]),
          ),
          ElevatedButton(
            onPressed: () => answer(),
            child: Text(options[1]),
          ),
          ElevatedButton(
            onPressed: () => answer(),
            child: Text(options[2]),
          ),
        ]),
      ),
    );
  }
}

// superpacifier movie
// WURA movie
