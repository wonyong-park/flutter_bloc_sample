import 'package:flutter/material.dart';
import 'package:flutter_bloc_sample/src/stateful/components/count_view_stateless.dart';

class PlusStatefulDisPlayWidget extends StatefulWidget {
  const PlusStatefulDisPlayWidget({Key? key}) : super(key: key);

  @override
  _PlusStatefulDisPlayWidgetState createState() =>
      _PlusStatefulDisPlayWidgetState();
}

/// 이렇게 구현하는 경우 하위 위젯을 모두 build하게 된다.
class _PlusStatefulDisPlayWidgetState extends State<PlusStatefulDisPlayWidget> {
  late int count;

  @override
  void initState() {
    super.initState();
    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("기본 Stateful"),
      ),
      body: CountViewStateless(
        count: count,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                count--;
              });
            },
            icon: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
