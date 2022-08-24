import 'package:flutter/material.dart';

class CountViewStateless extends StatelessWidget {
  int count;
  CountViewStateless({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Build CountViewStateless !!");
    return Container(
      child: Center(
        child: Text(
          count.toString(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80),
        ),
      ),
    );
  }
}
