import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BigThree extends StatelessWidget {
  BigThree({super.key});
  // final controller = Get.find<SurpriseController>();
  @override
  Widget build(BuildContext context) {
    return Container(
            child: Column(
            children: [
              Container(
              margin: const EdgeInsets.only(left:20,right: 20,top: 10),
              height: 280,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),
              child: SizedBox(
                height: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(color: const Color.fromARGB(255, 107, 72, 151),width: 2)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset("assets/images/cipungpung.png",height: 50,)
                                ),
                              ),
                              Text("Cipungpung",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600
                              ),),
                              const SizedBox(height: 2,),
                              Row(
                                children: [
                                  SvgPicture.asset("assets/images/circle_star.svg",width: 20,height: 20,),
                                  const SizedBox(width: 3,),
                                  Text("12000",style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromARGB(255, 119, 119, 119),
                                    fontSize: 13
                                  ),)
                                ],
                              ),
                              const SizedBox(height: 2,),
                            ],
                          ),
                        ),
                        Image.asset("assets/images/02.png",width: 100,)
                      ],),
                    ),
                    Container(
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      Image.asset("assets/images/crown.png",width: 30,height: 30,),
                      //SvgPicture.asset("assets/images/crown_svg.svg"),
                      GestureDetector(
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(color: const Color.fromARGB(255, 107, 72, 151),width: 2)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset("assets/images/cipungpung.png",height: 50,)
                                ),
                              ),
                              Text("Cipungpung",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600
                              ),),
                              const SizedBox(height: 2,),
                              Row(
                                children: [
                                  SvgPicture.asset("assets/images/circle_star.svg",width: 20,height: 20,),
                                  const SizedBox(width: 3,),
                                  Text("12000",style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromARGB(255, 119, 119, 119),
                                    fontSize: 13
                                  ),)
                                ],
                              ),
                              const SizedBox(height: 2,),
                            ],
                          ),
                        ),
                        Image.asset("assets/images/01-01.png",width: 100,)
                      ],),
                    ),
                    Container(
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      GestureDetector(
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(color: const Color.fromARGB(255, 107, 72, 151),width: 2)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset("assets/images/cipungpung.png",height: 50,)
                                ),
                              ),
                              Text("Cipungpung",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600
                              ),),
                              const SizedBox(height: 2,),
                              Row(
                                children: [
                                  SvgPicture.asset("assets/images/circle_star.svg",width: 20,height: 20,),
                                  const SizedBox(width: 3,),
                                  Text("12000",style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromARGB(255, 119, 119, 119),
                                    fontSize: 13
                                  ),)
                                ],
                              ),
                              const SizedBox(height: 2,),
                            ],
                          ),
                        ),
                        Image.asset("assets/images/03-01.png",width: 100,)
                      ],),
                    )
                  ],
                ),
              )
              // Center(
              //   child: Text("Leaderboards"),
              // ),
            ),
            // Obx(() => controller.isShowingConfetti.value ? ConfettiWidget(confettiController: ConfettiController(
            //   duration: Duration(seconds: 5)),
            //   blastDirectionality: BlastDirectionality.explosive,
            //   numberOfParticles: 25,
            //   shouldLoop: false,
            // ) : SizedBox()
            // )
            ],
          )
        );
  }
}