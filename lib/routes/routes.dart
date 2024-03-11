import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/pages/alertdialog_screen.dart';
import 'package:flutter_widgets_app/pages/animatedcontainer_screen.dart';
import 'package:flutter_widgets_app/pages/animatedicon_screen.dart';
import 'package:flutter_widgets_app/pages/appbar_screen.dart';
import 'package:flutter_widgets_app/pages/bottomnavbar_screen.dart';
import 'package:flutter_widgets_app/pages/cliprrect_screen.dart';
import 'package:flutter_widgets_app/pages/column_screen.dart';
import 'package:flutter_widgets_app/pages/container_screen.dart';
import 'package:flutter_widgets_app/pages/drawer_screen.dart';
import 'package:flutter_widgets_app/pages/expanded_screen.dart';
import 'package:flutter_widgets_app/pages/gesturedetector_screen.dart';
import 'package:flutter_widgets_app/pages/gridview_screen.dart';
import 'package:flutter_widgets_app/pages/imageasset_screen.dart';
import 'package:flutter_widgets_app/pages/list_view_screen.dart';
import 'package:flutter_widgets_app/pages/pageview_screen.dart';
import 'package:flutter_widgets_app/pages/richtext_screen.dart';
import 'package:flutter_widgets_app/pages/row_screen.dart';
import 'package:flutter_widgets_app/pages/sliverappbar_screen.dart';
import 'package:flutter_widgets_app/pages/stack_screen.dart';
import 'package:flutter_widgets_app/pages/tabbar_screen.dart';
import 'package:flutter_widgets_app/pages/text_screen.dart';

class RouterApp{
  static Map<String , WidgetBuilder> routes = {
    '/container' : (BuildContext context) => const ContainerScreen(),
    '/expanded' : (BuildContext context) => const ExpandedScreen(),
    '/column' : (BuildContext context) => const ColumnScreen(),
    '/rows' : (BuildContext context) => const RowScreen(),
    '/listview' : (BuildContext context) => const ListViewScreen(),
    '/cliprrect' : (BuildContext context) => const ClipRRectScreen(),
    '/imageasset' : (BuildContext context) => const ImageAssetScreen(),
    '/gridview' : (BuildContext context) => const GridViewScreen(),
    '/gesturedetector' : (BuildContext context) => const GestureDetectorScreen(),
    '/bottomnavbar' : (BuildContext context) => const BottomNavBarScreen(),
    '/appbar' : (BuildContext context) => const AppBarScreen(),
    '/drawer' : (BuildContext context) => const DrawerScreen(),
    '/sliverapp' : (BuildContext context) => const SliverAppBarScreen(),
    '/tabbar' : (BuildContext context) => const TabBarScreen(),
    '/animatedcontainer' : (BuildContext context) => const AnimatedContainerScreen(),
    '/alertdialog' : (BuildContext context) => const AlertDialogScreen(),
    '/text' : (BuildContext context) => const TextStyleScreen(),
    '/richtext' : (BuildContext context) => const RichTextScreen(),
    '/pageview' : (BuildContext context) => PageViewScreen(),
    '/stack' : (BuildContext context) => const StackScreen(),
    '/animatedicon' : (BuildContext context) => const AnimatedIconScreen(),


  };
}