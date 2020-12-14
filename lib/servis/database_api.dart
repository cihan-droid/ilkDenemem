import 'package:ilkDenemem/model/kategori.dart';
import 'package:ilkDenemem/servis/soyut_database_api.dart';
import 'package:http/http.dart' as http;

class DbRestApi implements DbApi {
  String url = "http://yeni.bursa.com.tr/json.php?part=places";
  @override
  Future<Kategori> mekanGetir(String id) {
    // TODO: implement mekanGetir
  }

  @override
  Future<List<Kategori>> mekanlariGetir() {}
}
