import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:si_gumi_app/layouts/Root.dart';

class LoginOrRegistrationPageMobile extends StatelessWidget {
  LoginOrRegistrationPageMobile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 238, 255)
              ),
              child: ElevatedButton(
                onPressed: (){
                  Get.to(Root());
                },
                child: Text("Go to Home"),
              ),
            )
          ],
        ),
      ),
    );
  }
}