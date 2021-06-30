library AGLJS;

import 'package:js/js.dart';

@JS('AGLJS')
external AglJs AGLJS;

@JS()
abstract class AglJs {
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
