import 'package:flutter/material.dart';

class SplashSayfa extends StatefulWidget {
  @override
  _SplashSayfaState createState() => _SplashSayfaState();
}

class _SplashSayfaState extends State<SplashSayfa> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text("Burası Splash Sayfa Olacak"),
    ));
  }
}
