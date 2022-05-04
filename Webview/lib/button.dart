import 'dart:html';

import 'package:app_final/vertbutton.dart';
import 'package:flutter/material.dart';
import 'dart:math';
final double buttonSize=80;
class FabMenuButton extends StatefulWidget{
  const FabMenuButton( {Key? key}) : super
      (key: key);
  @override
  State<FabMenuButton> createState() => _FabMenuButtonState();
}

class _FabMenuButtonState extends State<FabMenuButton>with SingleTickerProviderStateMixin {
  with SingleTickerProviderStateMixin{
    late AnimationController controller;
  @override
  void initState(){
  super.initState();
  controller = AnimationController(
  duration: const Duration(milliseconds: 250),
  vsync:
  )
  }
  @override
  void dispose(){
  animation.dispose();
  super.dispose();
  }
  @override
  toggleMenu(){
  menuIsOpen.value ? animation.reverse() : animation.forward();
  menuIsOpen.value = !menuIsOpen.value;
  }
  @override
  Widget build(BuildContext context){
  return Flow(
  clipBehavior: Clip.none,
  delegate: FlowMenuDelegate(),
  children: <IconData>[
  Icons.sms,].map<Widget>(buildFAB).toList(),);
  }
  }
}
class FlowMenuDelegate {
  @override
  void paintChildren(FlowPaintingContext context){
    final n=context.childCount;
    for (int i=0;i<n;i++){
      final isLastItem=i==context.childCount-1;
      final setVal=(value)=> isLastItem ? 0.0 : value;
      final radius =180;
      final theta=pi*0.5/(n-2);
      final x=setVal(radius * cos(theta));
      final y=setVal(radius * sin(theta));

      context.paintChild(
          i,
          transform: Matrix4.identity()..translate(x,y,0));
    }

  }
}
  Widget buildFAB(IconData icon) => SizedBox(
    width: buttonSize,
      height: buttonSize,
      child: FloatingActionButton(
        elevation: 0,
        splashColor: Colors.black,
        child: Icon(icon,color: Colors.white,size: 45),
        onPressed: (){},
      ),);