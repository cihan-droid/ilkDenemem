import 'dart:async';

class GirisBloc {
  StreamController<bool> _girisEkranGecisiKontrolor =
      StreamController<bool>.broadcast();
  Sink<bool> get _girisEkranGecisSinki => _girisEkranGecisiKontrolor.sink;
  Stream<bool> get girisEkranGecisAkis => _girisEkranGecisiKontrolor.stream;

  GirisBloc() {
    _sureyiBaslat();
  }
  void dispose() {
    _girisEkranGecisiKontrolor.close();
  }

  void _sureyiBaslat() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      _girisEkranGecisSinki.add(true);
    });
  }
}
