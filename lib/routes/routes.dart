import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/pages/container_screen.dart';
import 'package:flutter_widgets_app/pages/expanded_screen.dart';

class RouterApp{
  static Map<String , WidgetBuilder> routes = {
    '/container' : (BuildContext context) => const ContainerScreen(),
    '/expanded' : (BuildContext context) => const ExpandedScreen()

  };
}