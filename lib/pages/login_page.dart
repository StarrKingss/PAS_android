import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas1/components/custom_button.dart';
import 'package:pas1/components/custom_text.dart';
import 'package:pas1/components/custom_textfield.dart';
import 'package:pas1/controller/login_ctrl.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 80), 
                CustomText(
                  text: "Login Page",
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 60),
                const SizedBox(height: 80), 
                // Username
                CustomTextField(
                  hint: "Phone number, email or username",
                  txtController: controller.txtUsername,
                  cornerRadius: 10,
                  obsecureText: false,
                  prefixIcon: Icons.person,
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                ),
                const SizedBox(height: 10),
                // Password
                CustomTextField(
                  hint: "Password",
                  txtController: controller.txtPassword,
                  cornerRadius: 10,
                  obsecureText: true,
                  prefixIcon: Icons.lock,
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                ),
                const SizedBox(height: 12),
                // Button Login
                Obx(
                  () => controller.isLoading.value
                      ? Center(child: CircularProgressIndicator())
                      : SizedBox(
                          width: double.infinity, 
                          height: 45,

                          child: CustomButton(
                            text: "Login",
                            onPressed: () {
                              controller.login();
                            },
                            cornerRadius: 4,
                          ),
                        ),
                ),
                const SizedBox(height: 25),
                CustomText(
                  text: "Don't have an account? Sign up",
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
