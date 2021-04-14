import 'package:buildapps/ui/Home.dart';
import 'package:flutter/material.dart';

import 'file:///C:/Users/sid/AndroidStudioProjects/buildapps/lib/widgets/second_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => BizCard(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => SecondScreen(),
      },
    ),
  );
}
