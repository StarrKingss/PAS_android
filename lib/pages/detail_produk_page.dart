import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pas1/controller/detail_produk_ctrl.dart';
import 'package:pas1/components/custom_textfield.dart';
import 'package:pas1/components/custom_textfield1.dart';
import 'package:pas1/components/custom_button1.dart';

class DetailProdukPage extends StatelessWidget {
  DetailProdukPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetailProdukController());
    final TextEditingController txtjumlah = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("Detail Makanan")),

      body: Container(
        color: const Color(0xFFF3E8D5),
        child: Align(
          alignment: Alignment.topCenter,
          child: Card(
            color: const Color(0xFFFFFBF5),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(16),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    controller.image,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),

                  SizedBox(height: 10),

                  Text(
                    controller.namaProduk,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),

                  Text(
                    controller.harga.toString(),
                    style: TextStyle(fontSize: 18, color: Colors.green),
                  ),

                  SizedBox(height: 20),

                  Text("Deskripsi: ${controller.deskripsi}"),
                  SizedBox(height: 20),
                  SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: CustomTextfield(
                      hint: 'Masukkan Jumlah',
                      txtController: txtjumlah,
                      cornerRadius: 10,
                      keyboardType: const TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomButton(
                      text: 'Hitung Total Harga Menu',
                      onPressed: () {
                        if (controller.harga.toString().isEmpty) {
                          Get.snackbar(
                            'Error',
                            'Semua input harus diisi',
                            snackPosition: SnackPosition.BOTTOM,
                          );
                          return;
                        }
                        controller.hitung(
                          double.parse(txtjumlah.text),
                          double.parse(controller.harga.toString()),
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(25),
                    child: Obx(
                      () => Column(
                        children: [
                          const Text(
                            'Rincian Pembayaran',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            'Total: Rp ${controller.hasilhitung.value}',
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
