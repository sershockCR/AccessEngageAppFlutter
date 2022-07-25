// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:permission_handler/permission_handler.dart';

Future getPermissions() async {
  // Add your function code here!
  var cameraStatus = await Permission.camera.status;
  var microphoneStatus = await Permission.microphone.status;

  if (!cameraStatus.isGranted) {
    await Permission.camera.request();
  }

  if (!microphoneStatus.isGranted) {
    await Permission.microphone.request();
  }

  if (await Permission.camera.isGranted) {
    if (await Permission.microphone.isGranted) {
      return true;
    } else {
      return false;
    }
  } else {
    return false;
  }
}
