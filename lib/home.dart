import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: ElevatedButton(
              onPressed: () {
                //
              },
              child: Text('Genesis'),
            ),
          )
        ],
      ),
    );
  }
}
