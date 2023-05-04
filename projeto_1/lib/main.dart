import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'inicio_stateless.dart';

void main(List<String> args) {
  runApp(DevicePreview(
      enabled: true,
      storage: DevicePreviewStorage.preferences(),
      builder: (context) => App1()));
}
