import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learning_flutter/LoginPage.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
class SplashPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<SplashPage> {
  @override
  void initState() {

    super.initState();
    Timer(
      Duration(seconds: 5),
          () =>
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.blueAccent),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "   Loading....",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                SpinKitWave(
                  itemBuilder: (BuildContext context, int index) {
                    return DecoratedBox(
                      decoration: BoxDecoration(
                        color: index.isEven ? Colors.white : Colors.black,
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ));
  }
}
