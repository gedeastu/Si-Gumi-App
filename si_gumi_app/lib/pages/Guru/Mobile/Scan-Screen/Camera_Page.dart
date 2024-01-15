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
        title: const Text("Scanner",style: GoogleFonts,),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          CameraPreview(cameraController!),
        ],
      ),
    );
  }
}