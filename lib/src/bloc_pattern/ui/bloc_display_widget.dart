import 'package:flutter/material.dart';
import 'package:flutter_bloc_sample/src/bloc_pattern/bloc/count_bloc.dart';
import 'package:flutter_bloc_sample/src/bloc_pattern/components/clone_count_view.dart';
import 'package:flutter_bloc_sample/src/bloc_pattern/components/count_view.dart';

late CountBloc countBloc;

class BlocDisplayWidget extends StatefulWidget {
  const BlocDisplayWidget({Key? key}) : super(key: key);

  @override
  _BlocDisplayWidgetState createState() => _BlocDisplayWidgetState();
}

class _BlocDisplayWidgetState extends State<BlocDisplayWidget> {
  @override
  void initState() {
    super.initState();
    countBloc = CountBloc();
  }

  @override
  void dispose() {
    countBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bloc 패턴"),
      ),
      body: Column(
        children: [
          Expanded(
            child: CountView(),
          ),
          Expanded(
            child: CloneCountView(),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {
              countBloc.add();
            },
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              countBloc.minus();
            },
            icon: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
