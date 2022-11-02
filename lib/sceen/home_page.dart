import 'package:belajar/componen/about_componen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(
          right: 4,
          left: 4,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.green[600]),
        child: Container(
          // decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(40),
          //     color: Colors.green[700]),
          margin: EdgeInsets.only(right: 12, left: 12),
          child: CurvedNavigationBar(
            height: 50,
            color: Colors.green.shade600,
            buttonBackgroundColor: Colors.grey.shade300,
            backgroundColor: Colors.green.shade600,
            items: [
              Icon(
                Icons.home,
                size: 35,
              ),
              Icon(
                Icons.settings,
                size: 35,
              ),
              Icon(
                Icons.person,
                size: 35,
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title:
            Text('Home', style: TextStyle(color: Colors.black, fontSize: 23)),
      ),
      body: ListView(
        padding: EdgeInsets.only(right: 10, left: 10),
        children: [
          Text(
            "Hi,",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.28,
            width: MediaQuery.of(context).size.width * 0.90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.green[600]),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 50,
                  child: Image.asset(
                    'assets/img/praying.png',
                    height: 90,
                    width: 90,
                  ),
                ),
                Positioned(
                  right: 50,
                  child: Image.asset(
                    'assets/img/yoga.png',
                    height: 80,
                    width: 80,
                  ),
                ),
                Image.asset(
                  'assets/img/reading.png',
                  height: 150,
                  width: 150,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("About",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          AboutComponen()
        ],
      ),
    );
  }
}
