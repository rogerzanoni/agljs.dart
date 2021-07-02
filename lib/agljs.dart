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
}

@JS()
abstract class Api {
    external void init();
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
