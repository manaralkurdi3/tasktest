import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tasktest/screen/login.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {



  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).whenComplete(() => Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Image.asset(
          'assets/images.png',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
