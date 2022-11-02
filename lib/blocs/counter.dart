import 'dart:async';

class CounterBloc {
  int _counter = 0;

  int get counter => _counter;

  StreamController _inputcontroller = StreamController();
  StreamSink get inputan => _inputcontroller.sink;

  StreamController _outputcontroller = StreamController();
  StreamSink get _sinkOut => _outputcontroller.sink;

  Stream get output => _outputcontroller.stream;

  CounterBloc() {
    _inputcontroller.stream.listen((event) {
      if (event == 'add') {
        _counter++;
      } else {
        _counter--;
      }

      _sinkOut.add(_counter);
    });

    void dispose() {
      _inputcontroller.close();
      _outputcontroller.close();
    }
  }
}
