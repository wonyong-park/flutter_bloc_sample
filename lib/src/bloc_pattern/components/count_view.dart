import 'package:flutter/material.dart';
import 'package:flutter_bloc_sample/src/bloc_pattern/ui/bloc_display_widget.dart';

class CountView extends StatelessWidget {
  const CountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder(
        stream: countBloc.count,
        initialData: 0,
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            return Text(
              snapshot.data.toString(),
              style: TextStyle(fontSize: 80),
            );
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
