import 'dart:async';

import 'package:ilkDenemem/model/kategori.dart';
import 'package:ilkDenemem/servis/soyut_database_api.dart';

class AnasayfaBloc {
  final StreamController<List<Kategori>> _mekanlarListesiKontrolor =
      StreamController<List<Kategori>>.broadcast();
  Sink<List<Kategori>> get _mekanlarListesiniEkleSinki =>
      _mekanlarListesiKontrolor.sink;
  Stream<List<Kategori>> get mekanlarListesiAkisi =>
      _mekanlarListesiKontrolor.stream;
  AnasayfaBloc() {
    _servistenVeriGetir();
  }
  void dispose() {
    _mekanlarListesiKontrolor.close();
  }

  void _servistenVeriGetir() {
    // servisten gelen verileri sinle add metodunu kullanarak eklayecek
  }
}
