import 'dart:math';

import 'package:faker/faker.dart';
import 'package:get/get.dart';
import 'package:si_gumi_app/models/Penghargaan/leaderboards_model.dart';

class LeaderboardsController extends GetxController{
  static const chars = 'ABCDEFG';
  var leaderboards = <Leaderboards>[
    Leaderboards(
      ranking: 1 + Random().nextInt(67 - 1 + 1),
      photoProfile: "assets/images/player${1+Random().nextInt(4-1+1)}", 
      name: Faker().person.firstName(), 
      classes: "${1 + Random().nextInt(6 - 1 + 1)} ${String.fromCharCodes(
        Iterable.generate(
          1,(_) => chars.codeUnitAt(Random().nextInt(chars.length)),
        )
        )}", 
      score: 1000 + Random().nextInt(2000 - 1000 + 1)
    ),

  ].obs;
}