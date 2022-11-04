import 'package:belajar/blocs/counter.dart';
import 'package:belajar/blocs/pickcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LatihanBloc extends StatelessWidget {
  PickColor pickColor = PickColor();
  @override
  Widget build(BuildContext context) {
    CounterBloc bloc = CounterBloc();

    return Scaffold(
      body: Container(
        child: Center(
          child: ListView(
            children: [
              StreamBuilder(
                  stream: bloc.output,
                  initialData: bloc.counter,
                  builder: (context, snapshot) {
                    return Text('${snapshot.data}');
                  }),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        bloc.inputan.add('min');
                      },
                      icon: Icon(Icons.remove)),
                  IconButton(
                      onPressed: () {
                        bloc.inputan.add('add');
                      },
                      icon: Icon(Icons.add))
                ],
              ),
              StreamBuilder<dynamic>(
                  stream: pickColor.outputColor,
                  initialData: Colors.amber,
                  builder: (context, snapshot) {
                    return Container(
                        height: 100, width: 100, color: snapshot.data);
                  }),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      pickColor.input.add(Colors.amber);
                    },
                    child: Container(
                      height: 70,
                      width: 70,
                      color: Colors.amber,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      pickColor.input.add(Colors.blue);
                    },
                    child: Container(
                      height: 70,
                      width: 70,
                      color: Colors.blue,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
