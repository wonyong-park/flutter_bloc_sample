import 'package:flutter/material.dart';
import 'package:flutter_bloc_sample/src/bloc_pattern/components/clone_count_view2.dart';
import 'package:flutter_bloc_sample/src/bloc_pattern/ui/bloc_display_widget.dart';

class CloneCountView extends StatelessWidget {
  const CloneCountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Build CloneCountView !!");
    return Container(
      child: Row(
        children: [
          Text(
            "bloc 로 받은 값 : ",
            style: TextStyle(fontSize: 20),
          ),
          CloneCountView2(),
        ],
      ),
    );
  }
}
