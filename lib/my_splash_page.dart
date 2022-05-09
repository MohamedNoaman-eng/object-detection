import 'package:flutter/material.dart';
import 'package:objectdetection/home.dart';
import 'package:splashscreen/splashscreen.dart';

class MySplashPage extends StatefulWidget {
  @override
  _MySplashPageState createState() => _MySplashPageState();
}

class _MySplashPageState extends State<MySplashPage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      imageBackground: Image.asset("images/back4.jpeg",fit: BoxFit.cover,).image,
      loaderColor: Colors.pink,
      useLoader: true,
      navigateAfterSeconds: HomePage(),
      loadingText: const Text("Loading...",style: TextStyle(fontSize: 20,color: Colors.white),),
    );
  }
}
