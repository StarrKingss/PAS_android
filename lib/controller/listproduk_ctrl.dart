import 'package:pas1/models/produk_model.dart';
import 'package:get/get.dart';

class ListProdukController extends GetxController {

  final List<ProdukModel> produkAwal = [

  ProdukModel(
    namaProduk: "Nasi Goreng Spesial",
    harga: 25000,
    deskripsi: "Nasi goreng bumbu rempah dengan telur mata sapi, ayam suwir, dan kerupuk",
    image: "lib/assets/rendang.jpg",
  ),

  ProdukModel(
    namaProduk: "Ayam Bakar Madu",
    harga: 30000,
    deskripsi: "Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan.",
    image: "lib/assets/gudeg.jpg",
  ),

  ProdukModel(
    namaProduk: "Sate Ayam Madura",
    harga: 28000,
    deskripsi: "10 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental.",
    image: "lib/assets/pempek.jpg",
  ),

  ProdukModel(
    namaProduk: "Mie Ayam Bakso",
    harga: 20000,
    deskripsi: "Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi.",
    image: "lib/assets/rawon.jpg",
  ),

  ProdukModel(
    namaProduk: "Es Teh Manis Jumbo",
    harga: 8000,
    deskripsi: "Minuman teh melati segar dengan gula asli dan es batu kristal.",
    image: "lib/assets/papeda.jpg",
  ),
].obs;

late RxList<ProdukModel> listProduk =
    produkAwal.toList().obs;

  Future<void> refreshProduk() async {
  await Future.delayed(const Duration(milliseconds: 500));
  listProduk.assignAll(produkAwal);
}
}