import 'package:flutter/material.dart';

class TikTok extends StatelessWidget {
  static const String routeName = "design4";

  const TikTok({super.key});

  Widget get topSection => Container(
        height: 100,
        color: Colors.yellow,
      );

  Widget get bottom => Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: List<Widget>.generate(5,(index)=> Container(
      height: 40,
      width: 40,
      color: Colors.purple,
    )),
  );

  Widget get middle => Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          description,
          action,
        ],
      ));

  Widget get action =>Container(
    width: 100,
    color: Colors.red,
    child: Column(
      mainAxisSize: MainAxisSize.min,
        children: List<Widget>.generate(5, (_)=>Container(
      margin: EdgeInsets.only(top: 20),
      width: 60,
      height: 60,
      color: Colors.blue,
    ),)),
  );

  Widget get description =>Expanded(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(height: 10,margin: EdgeInsets.only(top: 10),color:Colors.green,),
        Container(height: 10,margin: EdgeInsets.only(top: 10),color:Colors.green,),
        Container(height: 10,margin: EdgeInsets.only(top: 10),color:Colors.green,),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          topSection,
          middle,
          bottom,
        ],
      ),
    );
  }
}
