import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class MyCameraScreen extends StatefulWidget {
  const MyCameraScreen({super.key});

  @override
  State<MyCameraScreen> createState() => _MyCameraScreenState();
}

class _MyCameraScreenState extends State<MyCameraScreen> {
  late CameraController _controller;
  Future<void>? _initializeControllerFuture;

  

  Future<void> _initializeCamera() async {
    // Get a list of available cameras on the device.
    final cameras = await availableCameras();
    // Select the first camera from the list (usually the rear camera).
    final firstCamera = cameras.first;

    // Create a CameraController and initialize it.
    _controller = CameraController(
      firstCamera,
      ResolutionPreset.high,
    );

    // Initialize the controller and store the Future for later use.
    _initializeControllerFuture = _controller.initialize();

    // Rebuild the widget once the controller is initialized.
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Camera Implementation"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      // Display a loading indicator while the camera is initializing.
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the Future is complete, display the camera preview.
            return CameraPreview(_controller);
          } else {
            // Otherwise, display a loading indicator.
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
     ),
  
);
}
}
