import 'dart:async';

import 'package:flutter_tts/flutter_tts.dart';

class TTS {
  static bool done = true;
  TTS(String text) {
    this._speak(text);
  }
  FlutterTts flutterTts = FlutterTts();
  Future _speak(String text) async {
    await flutterTts.setLanguage("ar");

    await flutterTts.setSpeechRate(0.5);

    await flutterTts.setVolume(1.0);

    await flutterTts.setPitch(1.0);
    if (TTS.done) {
      TTS.done = false;
      await flutterTts.speak(text);
    }
  }
}
