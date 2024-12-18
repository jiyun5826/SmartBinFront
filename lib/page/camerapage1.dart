import 'package:flutter/material.dart';
import 'package:project/recognition/camerarecognition1.dart';

class CameraPage1 extends StatefulWidget {
  const CameraPage1({super.key});

  @override
  State<CameraPage1> createState() => CameraPage1State();
}

class CameraPage1State extends State<CameraPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('camera page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('click the camera button'),
            ButtonTheme(
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Container(
                  width: 150,
                  height: 150,
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CameraRecognitionPage1(),
                        ),
                      );
                    },
                    child: Icon(Icons.camera_alt),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
