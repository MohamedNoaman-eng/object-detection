import 'package:flutter/material.dart';
import 'package:objectdetection/my_splash_page.dart';
import 'package:camera/camera.dart';


List<CameraDescription> cameras;

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Object Detection',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blueGrey,
      ),
      home:MySplashPage()
    );
  }
}

