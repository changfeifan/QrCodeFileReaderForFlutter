import 'dart:async';

import 'package:flutter/services.dart';

class QrCodeFileReader {
  static const MethodChannel _channel =
      const MethodChannel('QrCodeFileReader');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getQrCodeFileReader');
    return version;
  }
}
