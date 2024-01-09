
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Banner{
  final String Gambar1;
  final String Gambar2;
  final String Gambar3;
  final String Gambar4;

  Banner({
    required this.Gambar1,
    required this.Gambar2,
    required this.Gambar3,
    required this.Gambar4,
  });
}

class Announcement{
  var isTapped = false.obs;
}

class KerajinanDariSampah{
  final String img;
  final String name;
  final Color color_argb;
  KerajinanDariSampah({
    required this.img,
    required this.name,
    required this.color_argb
  });
}