import 'package:flutter/material.dart';
import 'package:myinstagram/utils/colors.dart';
import 'package:myinstagram/utils/dimentions.dart';

class ResponsiveLayoutScreen extends StatelessWidget {
  const ResponsiveLayoutScreen({super.key, required this.webScreenLayout, required this.mobileScreenLayout});
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) { 
      if(constraints.maxWidth>webSCreenSize){
        // Web screen layout
        return webScreenLayout;
      }else{
        //Mobile screen layout
        return mobileScreenLayout;
        
      }
     },);
  }
}