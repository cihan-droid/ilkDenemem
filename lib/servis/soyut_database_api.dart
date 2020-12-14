import 'package:ilkDenemem/model/kategori.dart';

abstract class DbApi {
  Future<List<Kategori>> mekanlariGetir();
  Future<Kategori> mekanGetir(String id);
}
