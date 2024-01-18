import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:si_gumi_app/components/Guru/Penghargaan-Components/BigThree-Penghargaan.dart';
import 'package:si_gumi_app/components/Guru/Penghargaan-Components/Leaderboard-Penghargaan.dart';
// import 'package:si_gumi_app/controllers/Penghargaan/tabs_controller.dart';

class PenghargaanPageMobile extends StatefulWidget {
  // final TabBarController controller = Get.put(TabBarController());
  const PenghargaanPageMobile({super.key});

  @override
  State<PenghargaanPageMobile> createState() => _PenghargaanPageMobileState();
}

class _PenghargaanPageMobileState extends State<PenghargaanPageMobile> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.5,color: Colors.black12)
            )
          ),
          child: AppBar(
            centerTitle: true,
            title: Text("Penghargaan",style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600
            ),),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 47,
              margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
              //padding: EdgeInsets.symmetric(vertical: 3,horizontal: 3),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.black12,
                ),
                borderRadius: BorderRadius.circular(30)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Material(
                  child: TabBar(
                    unselectedLabelColor:const Color.fromARGB(255, 107, 72, 151),
                    labelColor: Colors.white,
                    indicatorColor: const Color.fromARGB(255, 107, 72, 151),
                    indicatorWeight: 2,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      border: Border.all(color: Colors.transparent,width: 0),
                      color: const Color.fromARGB(255, 107, 72, 151),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    tabs: [
                      Tab(child:Text("Minggu Ini",style: GoogleFonts.poppins(
                        fontSize: 13.5,
                        fontWeight: FontWeight.w500
                      ),) ,),
                      Tab(child:Text("Setiap Waktu",style: GoogleFonts.poppins(
                        fontSize: 13.5,
                        fontWeight: FontWeight.w500
                      ),) ,),
                    ],
                    controller: _tabController,
                  ),
                ),
              ),
            ),
            // Obx(() => TabBar(
            //   tabs:const [
            //     Tab(text: 'tab 1',),
            //     Tab(text: 'tab 2',)
            //   ],
            //   onTap: (value) {
            //     //  controller.changeTabIndex(value);
            //   },
            //   )
            // ),
            Expanded(
              child: 
              TabBarView(
                controller: _tabController,
                children: [
                  Column(
                    children: [
                      BigThree(),
                      TableLeaderboard()
                    ],
                  ),
                  Column(
                    children: [
                      BigThree(),
                      TableLeaderboard()
                    ],
                  ),
                ],
              )
              // Obx(
              //   () => TabBarView(
              //     children: [
              //       Center(child: Text('Tab 1 content')),
              //       Center(child: Text('Tab 2 content')),
              //       Center(child: Text('Tab 3 content')),
              //     ],
              //     // controller: controller.selectedTabIndex.value,
              //   )
              // )
            )
          ],
        ),
      ),
    );
  }
}