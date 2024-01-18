import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:si_gumi_app/controllers/Penghargaan/leaderboards_controller.dart';

class TableLeaderboard extends StatelessWidget {
  TableLeaderboard({super.key});
  final controller = Get.put(LeaderboardsController());
  @override
  Widget build(BuildContext context) {
    return Container(
              width: 370,
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12,width: 1.5),
                borderRadius: BorderRadius.circular(15)
              ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 107, 72, 151),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 13),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Peringkat",style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                          ),),
                          const SizedBox(width: 0,),
                          Text("Nama",style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                          ),),
                          const SizedBox(width: 150,),
                          Text("Poin",style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                          ),)
                        ],
                      ),
                    ),
                    Container(
                    height: 241,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
                    ),
                    child: Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                          child: ListView.separated(
                          itemBuilder: (context, index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                      child: Text("${controller.leaderboards[index].ranking}",style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromARGB(255, 119, 119, 119)
                                      ),),
                                    ),
                                    const SizedBox(width: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image.asset(controller.leaderboards[index].photoProfile,width: 50,),
                                        const SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(limitCharacters(controller.leaderboards[index].name, 7),
                                            overflow: TextOverflow.ellipsis,
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold
                                            ),),
                                            Text("Kelas ${controller.leaderboards[index].classes}",style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                              color: const Color.fromARGB(255, 119, 119, 119)
                                            ),)
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 50,),
                                SizedBox(
                                  width: 60,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset("assets/images/circle_star.svg",width: 17,height: 17,),
                                      const SizedBox(width: 5,),
                                      Text("${controller.leaderboards[index].score}",style: GoogleFonts.poppins(
                                        color: const Color.fromARGB(255, 119, 119, 119),
                                        fontWeight: FontWeight.w600
                                      )),
                                    ],
                                  ),
                                )
                              ],
                            );
                          },
                          itemCount: controller.leaderboards.length,
                          separatorBuilder: (context, index) {
                            return const Divider(color: Colors.transparent,);
                          },
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 190, 242, 235),
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 20,
                                        child: Text("67",style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          color: const Color.fromARGB(255, 119, 119, 119)
                                        ),),
                                      ),
                                      const SizedBox(width: 15,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(controller.leaderboards[2].photoProfile,width: 50,),
                                          const SizedBox(width: 10,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(limitCharacters("You", 7),
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.bold
                                              ),),
                                              Text("Kelas ${controller.leaderboards[2].classes}",style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                                color: const Color.fromARGB(255, 119, 119, 119)
                                              ),)
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 100,),
                                  SizedBox(
                                    width: 70,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset("assets/images/circle_star.svg",width: 17,height: 17,),
                                        const SizedBox(width: 5,),
                                        Text("${controller.leaderboards[2].score}",style: GoogleFonts.poppins(
                                          color: const Color.fromARGB(255, 119, 119, 119),
                                          fontWeight: FontWeight.w600
                                        )),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                          ),
                        )
                      ],
                    ),
                    ),
                  ],
                ),
              );
  }
   String limitCharacters(String text, int limit) {
    if (text.length > limit) {
      return text.substring(0, limit) + '..';
    } else {
      return text;
    }
  }
}

