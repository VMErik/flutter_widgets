import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/pages/cliprrect_screen.dart';
import 'package:flutter_widgets_app/pages/column_screen.dart';
import 'package:flutter_widgets_app/pages/container_screen.dart';
import 'package:flutter_widgets_app/pages/expanded_screen.dart';
import 'package:flutter_widgets_app/pages/list_view_screen.dart';
import 'package:flutter_widgets_app/pages/row_screen.dart';

class RouterApp{
  static Map<String , WidgetBuilder> routes = {
    '/container' : (BuildContext context) => const ContainerScreen(),
    '/expanded' : (BuildContext context) => const ExpandedScreen(),
    '/column' : (BuildContext context) => const ColumnScreen(),
    '/rows' : (BuildContext context) => const RowScreen(),
    '/listview' : (BuildContext context) => const ListViewScreen(),
    '/cliprrect' : (BuildContext context) => const ClipRRectScreen(),

  };
}