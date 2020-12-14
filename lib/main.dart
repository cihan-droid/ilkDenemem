import 'package:flutter/material.dart';
import 'package:ilkDenemem/bloclar/anasayfa_bloc.dart';
import 'package:ilkDenemem/bloclar/anasayfa_bloc_provider.dart';
import 'package:ilkDenemem/bloclar/girisBloc.dart';
import 'package:ilkDenemem/sayfalar/anasayfa.dart';
import 'package:ilkDenemem/sayfalar/splash.dart';
import 'package:ilkDenemem/servis/database_api.dart';

void main() => runApp(BBBMobil());

class BBBMobil extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GirisEkran(),
    );
  }
}

class GirisEkran extends StatefulWidget {
  @override
  _GirisEkranState createState() => _GirisEkranState();
}

class _GirisEkranState extends State<GirisEkran> {
  GirisBloc _girisBloc;

  @override
  void initState() {
    super.initState();
    _girisBloc = GirisBloc();
  }

  @override
  void dispose() {
    _girisBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _girisBloc.girisEkranGecisAkis,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return AnasayfaBlocProvider(
              child: Anasayfa(),
              anasayfaBloc: AnasayfaBloc(dbApi: DbRestApi()));
        } else {
          return SplashSayfa();
        }
      },
    );
  }
}
