import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';
import '../../main.dart';

class BodyRecognition extends StatefulWidget {
  
  @override
  _BodyRecognitionState createState() => _BodyRecognitionState();
}

class _BodyRecognitionState extends State<BodyRecognition> {
  
  bool isWorking= false;
  String result='';
  CameraController? cameraController;
  CameraImage? imgCamera;

  loadModel() async{
  await Tflite.loadModel(model: "assets/model_unquant.tflite",
  labels:"assets/labels.txt");
  }

  void initCamera() {
    cameraController = CameraController(cameras![0], ResolutionPreset.medium);
    cameraController!.initialize().then((value) {

     if(!mounted){
       return;
     }
     setState(() {
       cameraController!.startImageStream((imageFromStream) => {

         if(!isWorking){
            isWorking=true,
            imgCamera =imageFromStream,
            runModelOnStreamFrames(),
         }
       });
     });

    });
  }

   runModelOnStreamFrames() async{
     if (imgCamera!=null)
     {
       
         var recognition = await Tflite.runModelOnFrame(
         bytesList: imgCamera!.planes.map((plane) {return plane.bytes;}).toList(),
         imageHeight: imgCamera!.height,
         imageWidth: imgCamera!.width,
         imageMean: 127.5,
         imageStd: 127.5,
         rotation: 90,
         numResults: 1,
         threshold: 0.1,
         asynch: true,
       );
         result='';
         recognition!.forEach((response) {
         result += response["label"] + "  " + (response["confidence"] as double).toStringAsFixed(2) +"\n\n"; 
          setState(() {
          result;
          });
        
        });
        
        
        isWorking = false;
     
     }
     
   }

  @override
  void initState() {
    super.initState();
    loadModel();
    initCamera();
  }

@override
  void dispose() async{
    super.dispose();
    await Tflite.close();
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
        title: Text("Body Recognition"),
        backgroundColor: Colors.black,
     ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(20),
          child: Container(
            height: MediaQuery.of(context).size.height*0.7,
            width: MediaQuery.of(context).size.width,
            child: !cameraController!.value.isInitialized?
            Container():
            AspectRatio(aspectRatio: cameraController!.value.aspectRatio,
            child: CameraPreview(cameraController!),)  
          ),
          ),
          Text(result, style: TextStyle(color: Colors.black))
        ],
      )
        
         
         
             
             
             
            
    )
    );


           
    
  }
}