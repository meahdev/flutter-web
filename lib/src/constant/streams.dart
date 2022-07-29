import 'dart:async';

StreamController<String> selectedDrawerIndexController =
    StreamController<String>.broadcast();

StreamController<int?> selectedDrawerExpanseController =
    StreamController<int?>.broadcast();
