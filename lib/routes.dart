import 'package:get/get.dart';
import 'package:pas1/pages/login_page.dart';
import 'package:pas1/pages/menu_drawer.dart';
import 'package:pas1/pages/detail_produk_page.dart';

class Routes {

  static const String login = '/login';
  static const String menudrawer = '/menudrawer';
  static const String detailproduk = '/detailproduk';
 
  static final myPages = [
    GetPage(name: login, page: () => LoginPage()),
    GetPage(name: menudrawer, page: () => MenuDrawerPage()),
    GetPage(name: detailproduk, page: () => DetailProdukPage()),
  ];
}