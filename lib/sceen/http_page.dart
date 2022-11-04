import 'package:belajar/componen/httpstateful.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HttpPage extends StatefulWidget {
  const HttpPage({Key? key}) : super(key: key);

  @override
  State<HttpPage> createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  @override
  Widget build(BuildContext context) {
    HttpStateful dataResponse = HttpStateful();

    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: ListView(
        children: [
          Text((dataResponse.id == null)
              ? 'ID : Tidak ada ID'
              : 'ID : ${dataResponse.id}'),
          SizedBox(height: 20),
          Text((dataResponse.name == null)
              ? 'Name : Tidak ada nama'
              : 'Name :  ${dataResponse.name}'),
          SizedBox(height: 20),
          Text((dataResponse.job == null)
              ? 'Job : Tidak ada jobnya'
              : 'Job :  ${dataResponse.job}'),
          SizedBox(height: 20),
          Text((dataResponse.createdAt == null)
              ? 'CreatedAt : Tidak ada CreatedAt'
              : 'CreatedAt :  ${dataResponse.createdAt}'),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                HttpStateful.connectAPI("Izaaz", "Dev").then((value) {
                  setState(() {
                    print(value.name);
                    dataResponse = value;
                  });
                });
              },
              child: Text('POST'))
        ],
      )),
    );
  }
}
