import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Column(
        children: [
          Center(
            child: Text(
              'This is Profile Screen',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold,),
            ),
          ),
        ],
      ),
    );
  }
}
