import 'dart:async';

class CountBloc {
  // CountEventBloc countEventBloc = CountEventBloc();
  int _count = 0;
  final StreamController<int> _countSubject = StreamController<int>.broadcast();
  Stream<int> get count => _countSubject.stream;

  // CountBloc() {
  //   countEventBloc._countEventSubject.stream.listen(_countEventListen);
  // }
  //
  // void _countEventListen(CountEvent event) {
  //   switch (event) {
  //     case CountEvent.ADD_EVENT :
  //       _count++;
  //       break;
  //     case CountEvent.SUBSTRACT_EVNET :
  //       _count--;
  //       break;
  //   }
  //   _countSubject.sink.add(_count);
  // }

  add() {
    _count++;
    _countSubject.sink.add(_count);
  }

  minus() {
    _count--;
    _countSubject.sink.add(_count);
  }

  dispose() {
    _countSubject.close();
  }
}

// class CountEventBloc {
//   final StreamController<CountEvent> _countEventSubject = StreamController<CountEvent>();
//
//   Sink<CountEvent> get countEventSink => _countEventSubject.sink;
//
//   dispose() {
//     _countEventSubject.close();
//   }
// }
//
// enum CountEvent { ADD_EVENT, SUBSTRACT_EVNET}