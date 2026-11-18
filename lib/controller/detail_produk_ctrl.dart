import 'package:get/get.dart';

class DetailProdukController extends GetxController {
   late String namaProduk;
   late int harga;
   late String deskripsi;
   late String image;
   var hargabayar = 0.0.obs;
   var jumlahmakanan = 0.0.obs;
   var hasilhitung = 0.0.obs;


   @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    namaProduk = arguments['namaProduk'];
    harga = arguments['harga'];
    deskripsi = arguments['deskripsi'];
    image = arguments['image'];
    }

    void hitung(double hargabayar, double jumlahmakanan) {

      double subtotal = hargabayar * jumlahmakanan;
      double ppn = subtotal * 0.05;
      double totalbayar = subtotal + ppn;
      
      hasilhitung.value = totalbayar;
  }
}