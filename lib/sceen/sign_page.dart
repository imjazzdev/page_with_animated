import 'package:belajar/animations/container.dart';
import 'package:belajar/componen/var_global.dart';
import 'package:belajar/main.dart';
import 'package:belajar/sceen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/route_manager.dart';

class SignPage extends StatefulWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      body: SafeArea(
          child: Container(
        child: ListView(
          padding: EdgeInsets.only(left: 20, right: 20),
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              child: Stack(alignment: Alignment.center, children: [
                Positioned(
                    left: 15,
                    top: 20,
                    child: ContAnimation(
                      img: 'assets/img/planning.png',
                      size: 200,
                      duration: 2200,
                      curve: Curves.elasticInOut,
                    )),
                Positioned(
                    top: 0,
                    right: 35,
                    child: ContAnimation(
                        img: 'assets/img/microchip.png',
                        size: 100,
                        duration: 2200,
                        curve: Curves.elasticOut)),
                Positioned(
                    right: 50,
                    bottom: 10,
                    child: ContAnimation(
                        img: 'assets/img/increase.png',
                        size: 110,
                        duration: 2200,
                        curve: Curves.elasticIn)),
              ]),
            ),
            SizedBox(
              height: 15,
            ),
            TweenAnimationBuilder(
              curve: Curves.bounceOut,
              duration: Duration(seconds: 2),
              tween: Tween<double>(begin: 0, end: 1),
              builder: (context, double value, child) => Opacity(
                opacity: value,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text \nof the printing and typesetting industr',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // TextField(
            //   controller: username,
            //   cursorColor: Colors.green[600],
            //   decoration: InputDecoration(
            //       labelText: 'Email',
            //       labelStyle:
            //           TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
            //       focusColor: Colors.green,
            //       border:
            //           OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
            //       fillColor: Colors.green[600],
            //       suffixIconColor: Colors.green[600],
            //       hoverColor: Colors.green[600]),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // TextField(
            //   obscureText: true,
            //   controller: password,
            //   cursorColor: Colors.green[600],
            //   decoration: InputDecoration(
            //       labelText: 'Password',
            //       labelStyle:
            //           TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
            //       focusColor: Colors.green,
            //       border:
            //           OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
            //       fillColor: Colors.green[600],
            //       suffixIconColor: Colors.green[600],
            //       hoverColor: Colors.green[600]),
            // ),
            Container(
              height: 120,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(90, 95, 192, 230),
                        blurRadius: 12,
                        offset: Offset(0, 10))
                  ]),
              child: TweenAnimationBuilder(
                duration: Duration(seconds: 3),
                tween: Tween<double>(begin: 0, end: 1),
                curve: Curves.easeIn,
                builder: (BuildContext context, double value, Widget? child) =>
                    Opacity(
                  opacity: value,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(color: Colors.grey.shade300))),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email',
                              hintStyle: TextStyle(color: Colors.grey)),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.visibility_rounded),
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.grey)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Forget password?',
                style: TextStyle(
                  color: Colors.blueAccent,
                ),
                textAlign: TextAlign.end),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                child: Align(
                  alignment: Alignment.center,
                  child: TweenAnimationBuilder(
                    duration: Duration(seconds: 2),
                    curve: Curves.easeInOut,
                    tween: Tween<double>(begin: 70, end: 120),
                    builder: (context, double value, child) => Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(5),
                      height: 40,
                      width: value,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(255, 95, 192, 230),
                            Color.fromARGB(255, 164, 216, 236),
                          ])),
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )),
            SizedBox(height: 25),

            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 1),
              duration: Duration(seconds: 3),
              curve: Curves.easeInOut,
              builder: (context, double value, child) => Opacity(
                opacity: value,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Dont have an account? '),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 95, 192, 230),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'or continue with',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/img/google.png",
                        height: 50,
                        width: 50,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'assets/img/facebook.png',
                        height: 50,
                        width: 50,
                      )
                    ],
                  )
                ]),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
