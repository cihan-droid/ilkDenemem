import 'dart:async';

import 'package:ilkDenemem/model/kategori.dart';
import 'package:ilkDenemem/servis/soyut_database_api.dart';

class AnasayfaBloc {
  final DbApi dbApi;

  final StreamController<List<Kategori>> _mekanlarListesiKontrolor =
      StreamController<List<Kategori>>.broadcast();
  Sink<List<Kategori>> get _mekanlarListesiniEkleSinki =>
      _mekanlarListesiKontrolor.sink;
  Stream<List<Kategori>> get mekanlarListesiAkisi =>
      _mekanlarListesiKontrolor.stream;
  AnasayfaBloc({this.dbApi}) {
    //_servistenVeriGetir();
  }
  void dispose() {
    _mekanlarListesiKontrolor.close();
  }

  void _servistenVeriGetir() {
    dbApi.mekanlariGetir().then((value) {
      _mekanlarListesiniEkleSinki.add(value);
      // TODO: model sınıfında json veri tipini modele çeciren metodu yazdıktan sonra burada fromJson uygulayıp sinke öyle ekle
    });
  }
}
