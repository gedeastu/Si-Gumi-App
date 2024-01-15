import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:get/get.dart';
// import 'package:si_gumi_app/models/Scan/camera_model.dart';

class CameraPageMobile extends StatefulWidget {
  const CameraPageMobile ({super.key});

  @override
  State<CameraPageMobile> createState() => _CameraPageMobileState();
}

class _CameraPageMobileState extends State<CameraPageMobile> {
  late List<CameraDescription> cameras;
  CameraController? cameraController;
  int direction = 0;
  bool isCameraReady = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializecamera();
  }

  void initializecamera() async {
    cameras = await availableCameras();
    cameraController = CameraController(
      cameras[direction], 
      ResolutionPreset.high, 
      enableAudio: false
    );
    cameraController!.initialize().then((_) {
      if(!mounted){
        return;
      }
      setState(() {
        isCameraReady=true;
      });
    }).catchError((error){
      print('Failed to Controller :&error');
    });
  }

  @override
  void dispose() {
    cameraController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!isCameraReady) {
      return Container();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Camera",style: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
          fontSize: 16
        ),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              child: CameraPreview(cameraController!)
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Positioned(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromARGB(125, 217, 217, 217)
                    ),
                    child: Text("Arahkan kamera ke sampah anda",textAlign: TextAlign.center,style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.white
                    ),),
                  ),
                ),
                SizedBox(height: 30,),
                Positioned(
                  child: Container(
                    width: 360,
                    child: Image.asset("assets/images/scannerBorder.png")
                  )
                ),
                SizedBox(height: 30,),
                Positioned(
                  child: Container(
                    width: 360,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(125, 217, 217, 217)
                    ),
                    child: Row(
                      children: [
                        
                      ],
                    ),
                  )
                ),
                SizedBox(height: 20,),
                Row(

                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}