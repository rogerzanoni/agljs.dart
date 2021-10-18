library AGLJS;

import 'package:js/js.dart';
import 'package:js/js_util.dart';

import 'dart:async';

@JS('AGLJS')
external AglJs AGLJS;

@JS()
abstract class AglJs {
    external AfmMain get afmMain;
    external Api get api;
    external HomeScreen get homescreen;
    external Audiomixer get audiomixer;
}

@JS()
abstract class Api {
    external void init();
}

@JS()
abstract class Audiomixer {
    external dynamic list_controls();
    external dynamic set_volume(String id, double value);
    external dynamic on_volume_changed(void Function(dynamic data) handler);
    external dynamic on_controls_changed(void Function(dynamic data) handler);
}

@JS()
abstract class AfmMixerControl {
    external String get control;
    external double get value;
}

@JS()
abstract class HomeScreen {
    external Object showWindow(String id);
}

@JS()
abstract class AfmMain {
    // TODO: add documentation on how
    // to use this (runnables() return
    // a Promise that should be converted to
    // Future<List<AfmApp>>
    external dynamic runnables();
}

@JS()
abstract class AfmApp {
    external String get id;
}
