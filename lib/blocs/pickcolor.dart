import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PickColor {
  Color amber = Colors.amber;
  Color blue = Colors.blue;
  Color _color = Colors.amber;

  StreamController _inputcontroller = StreamController();
  StreamSink get input => _inputcontroller;

  StreamController _outputcontroller = StreamController();
  StreamSink get _sinkOut => _outputcontroller;

  Stream get outputColor => _outputcontroller.stream;

  PickColor() {
    _inputcontroller.stream.listen((event) {
      if (event == amber) {
        _color = Colors.amber;
      } else {
        _color = Colors.blue;
      }

      _sinkOut.add(_color);
    });
  }
  void dispose() {
    _inputcontroller.close();
    _outputcontroller.close();
  }
}
