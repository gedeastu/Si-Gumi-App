import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KerajinanDariSampahHome extends StatelessWidget {
  const KerajinanDariSampahHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Kerajinan dari sampah",style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 20
          ),),
          Row(
            children: [
              Container(
                width: 200,
                height: 400,
                child: MaterialButton(
                  onPressed:(){},
                  child: Column(
                    children: [
                      Image.asset("assets/images/sampahPlastik.png"),
                      Text("Sampah Plastik")
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}