import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
                child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                height: 300,
                child: ListView.separated(
                itemBuilder: (context, index) {
                  return Obx(() => DataTable(
                dataTextStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 119, 119, 119)
                ),
                columns: [
                  DataColumn(
                    label: Text("Peringkat",textAlign: TextAlign.center,style: TextStyle(
                    fontWeight: FontWeight.bold
                    ),)
                  ),
                  DataColumn(label: Text("Nama",textAlign: TextAlign.center,style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),)),
                  DataColumn(label: Text("Poin",textAlign: TextAlign.center,style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),))
                ], 
                rows: [
                  DataRow(
                    
                  cells: [
                    DataCell(Text("${index+1}",textAlign: TextAlign.center,)),
                    // DataCell(Text("${controller.leaderboards[index].ranking}",textAlign: TextAlign.center,)),
                    DataCell(SizedBox(
                      width: 95,
                      child: Row(
                        children: [
                          Image.asset("assets/images/player1.png"),
                          SizedBox(width: 10,),
                          //Image.asset(controller.leaderboards[index].photoProfile,width: 20,height: 20,),
                          Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(controller.leaderboards[index].name,style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16
                            ),),
                            Text(controller.leaderboards[index].classes)
                          ],),
                        ],
                      ),
                    )),
                    DataCell(
                      Row(
                        children: [
                          SvgPicture.asset("assets/images/circle_star.svg",width: 20,height: 20,),
                          SizedBox(width: 5,),
                          Text(controller.leaderboards[index].score.toString(),style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 119, 119, 119)
                          ),),
                        ],
                      )
                    )
                  ])
                ]));
                },
                itemCount: controller.leaderboards.length,
                separatorBuilder: (context, index) {
                  return Divider();
                },
                ),
                ),
                ),
              );
  }
}