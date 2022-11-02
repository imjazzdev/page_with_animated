import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AboutComponen extends StatelessWidget {
  const AboutComponen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // About('Olahraga', 'Tubuhmu butuh recovery', 'assets/img/yoga.png',
          //     Colors.blue.shade200),
          // About('Belajar', 'Ayo isi maksimalkan waktu belajar mu',
          //     'assets/img/reading.png', Colors.amber.shade200),
          // About('Berdoa', 'Dekatkan diri pada tuhan', 'assets/img/praying.png',
          //     Colors.pink.shade200),
        ],
      ),
    );
  }
}

class About extends StatelessWidget {
  bool isSelected;
  final String title;
  final String caption;
  final String img;
  final Color color;
  About(this.title, this.caption, this.img, this.color, this.isSelected);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => isSelected = true,
      child: Container(
        margin: EdgeInsets.all(5),
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width * 0.90,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: Colors.grey[300]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: isSelected ? Colors.amber[200] : color,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      bottomLeft: Radius.circular(18))),
              height: MediaQuery.of(context).size.height * 0.60,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          )),
                      Text(caption,
                          style: TextStyle(
                            fontSize: 16,
                          ))
                    ],
                  ),
                  Image.asset(
                    img,
                    height: 100,
                    width: 100,
                  )
                ],
              ),
            ),
            Container(
              width: 70,
              child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        blurRadius: 0.5,
                        offset: Offset(1, 1),
                        spreadRadius: 0.5,
                        color: Colors.grey)
                  ], shape: BoxShape.circle, color: Colors.grey[100]),
                  child: Icon(Icons.arrow_forward_ios_rounded)),
            )
          ],
        ),
      ),
    );
  }
}
