import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:si_gumi_app/models/Home/Home_models.dart';

class KerajinanController extends GetxController{
  var kerajinanDariSampah = <KerajinanDariSampah>[
    KerajinanDariSampah(img: "assets/images/sampahPlastik.png", name: "Sampah Plastik",color_argb: Color.fromARGB(255, 34, 87, 218).withOpacity(0.3)),
    KerajinanDariSampah(img: "assets/images/sampahKertas.png", name: "Sampah Kertas", color_argb: Color.fromARGB(255, 34, 87, 218).withOpacity(0.3)),
    KerajinanDariSampah(img: "assets/images/lainnya.png", name: "Lainnya", color_argb: Color.fromARGB(255, 34, 87, 218).withOpacity(0.3))
  ].obs;
}