import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalcHome extends StatefulWidget {
  const CalcHome({super.key});

  @override
  State<CalcHome> createState() => _CalcHomeState();
}

class _CalcHomeState extends State<CalcHome> {
  String type ="";
  String answer ="";
  String hint ="";

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double fontSize = screenWidth * 0.04;
    double fontSize2 = screenWidth * 0.07;
    return Scaffold(
      backgroundColor: Color(0xffef739f),
      body: Container(
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(right: 35,bottom: 20,left: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      hint=="" ? Text(
                        "",
                      ): Container(
                        margin:EdgeInsets.all(10),
                        padding:EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: Text(
                            "$hint",
                            style: TextStyle(fontSize: fontSize2,color: Colors.black),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(height:MediaQuery.of(context).size.height*.05,),
                      Text(
                        "$type",
                        style: TextStyle(fontSize: fontSize2,color: Colors.black38),
                        textAlign: TextAlign.right,
                      ),
                      Text(
                        answer!="" ? "= $answer": "$answer",
                        style: TextStyle(fontSize: 50,color:Colors.black),
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Button(
                          fontsize: fontSize,
                            height: screenHeight * .1,
                            width: screenWidth * .19,
                            text: "AC",
                            color: Colors.grey,onPressed:(){
                              setState(() {
                                type="";
                                answer="";
                                hint="";
                              });
                        }),
                        Button(
                            fontsize: fontSize,

                            height: screenHeight * .1,
                            width: screenWidth * .19,
                            text: "Del",
                            color: Colors.grey,onPressed:(){
                              setState(() {
                                if(type.length>0){
                                type=type.substring(0,type.length -1 );}
                              });
                        }),
                        Button(
                            fontsize: fontSize,

                            height: screenHeight * .1,
                            width: screenWidth * .19,
                            text: "%",
                            color: Colors.grey,onPressed:(){
                          setState(() {
                            type+="%";
                          });
                        }),
                        Button(
                            fontsize: fontSize,

                            height: screenHeight * .1,
                            width: screenWidth * .19,
                            text: "/",
                            color: Colors.grey,onPressed:(){
                          setState(() {
                            type+="/";
                          });
                        }),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Button(
                            fontsize: fontSize,

                            height: screenHeight * .1,
                            width: screenWidth * .19,
                            text: "7",onPressed:(){
                          setState(() {
                            type+="7";
                          });
                        }),
                        Button(
                            fontsize: fontSize,

                            height: screenHeight * .1,
                          width: screenWidth * .19,
                          text: "8",onPressed:(){
                          setState(() {
                            type+="8";
                          });
                        }
                        ),
                        Button(
                            fontsize: fontSize,

                            height: screenHeight * .1,
                            width: screenWidth * .19,
                            text: "9",onPressed:(){
                          setState(() {
                            type+="9";
                          });
                        }),
                        Button(
                            fontsize: fontSize,

                            height: screenHeight * .1,
                            width: screenWidth * .19,
                            text: "x",
                            color: Colors.grey,onPressed:(){
                          setState(() {
                            type+="x";
                          });
                        }),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Button(
                            fontsize: fontSize,

                            height: screenHeight * .1,
                            width: screenWidth * .19,
                            text: "4",onPressed:(){
                          setState(() {
                            type+="4";
                          });
                        }),
                        Button(
                            fontsize: fontSize,

                            height: screenHeight * .1,
                          width: screenWidth * .19,
                          text: "5",onPressed:(){
                          setState(() {
                            type+="5";
                          });
                        }
                        ),
                        Button(
                            fontsize: fontSize,

                            height: screenHeight * .1,
                            width: screenWidth * .19,
                            text: "6",onPressed:(){
                          setState(() {
                            type+="6";
                          });
                        }),
                        Button(
                            fontsize: fontSize,

                            height: screenHeight * .1,
                            width: screenWidth * .19,
                            text: "+",
                            color: Colors.grey,onPressed:(){
                          setState(() {
                            type+="+";
                          });
                        }),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Button(
                            fontsize: fontSize,

                            height: screenHeight * .1,
                            width: screenWidth * .19,
                            text: "1",onPressed:(){
                          setState(() {
                            type+="1";
                          });
                        }),
                        Button(
                            fontsize: fontSize,

                            height: screenHeight * .1,
                          width: screenWidth * .19,
                          text: "2",onPressed:(){
                          setState(() {
                            type+="2";
                          });
                        }
                        ),
                        Button(
                            fontsize: fontSize,

                            height: screenHeight * .1,
                            width: screenWidth * .19,
                            text: "3",onPressed:(){
                          setState(() {
                            type+="3";
                          });
                        }),
                        Button(
                            fontsize: fontSize,

                            height: screenHeight * .1,
                            width: screenWidth * .19,
                            text: "-",
                            color: Colors.grey,onPressed:(){
                          setState(() {
                            type+="-";
                          });
                        }),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Button(
                            fontsize: fontSize,

                            height: screenHeight * .1,
                            width: screenWidth * .19,
                            text: "0",onPressed:(){
                          setState(() {
                            type+="0";
                          });
                        }),
                        Button(
                            fontsize: fontSize,

                            height: screenHeight * .1,
                            width: screenWidth * .19,
                            text: ".",onPressed:(){
                          setState(() {
                            type+=".";
                          });
                        }),
                        Button(
                          fontsize: fontSize,
                            height: screenHeight * .1,
                            width: screenWidth * .43,
                            text: "=",
                            color: Colors.pink,onPressed:(){
                          setState(() {
                            equal();
                            if(answer.endsWith("0")){
                              answer=answer.replaceAll(".0", "");
                            }
                            if(answer.length==1){
                              hint=" 🤨 !! مشغلانى علشان دى ";
                            }
                            if(answer.length>=9 ){
                              hint=" 😏 !! كدا بتعجزينى يعنى ";
                            }
                          });
                        }),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget Button(
      {required double height,
      required double width,
      required double fontsize,
      required String text,
        required Function onPressed,
      Color color = Colors.white}) {
    return GestureDetector(
      onTap: () {

        onPressed();
      },
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.cyan, // لون الحدود
            width: 4, // عرض الحدود
          ),
          color: color, // لون الخلفية
          borderRadius: BorderRadius.circular(40), // يجعل الزوايا مستديرة
        ),
        child: Center(
          child: Text(
            "$text", // الأحرف
            style: TextStyle(
              fontSize: fontsize, // حجم الخط
              color: Colors.black, // لون النص
              fontWeight: FontWeight.bold, // سمك الخط
            ),
          ),
        ),
      ),
    );
  }
  void equal(){
    try {
      String finalAsk=type;
      finalAsk=finalAsk.replaceAll("x", "*");
      Parser p= Parser();//take string and convert it to math expression
      Expression exp=p.parse(finalAsk);
      ContextModel cm= ContextModel();//اللى جواها العمليات الحسابية
      double eval= exp.evaluate(EvaluationType.REAL, cm);
      answer= eval.toString();
    } catch(e){
if(type.endsWith("/")){
  hint=" 😒 نسيتى هتقسمى على ايه";
  answer="";
}
else if(type.endsWith("x")){
  hint=" 😒 هتضربى فى ايه";
  answer="";
}
else if(type.endsWith("-")){
    hint="... رقم الطرح ياااا ";
    answer="";
    }
else if(type.endsWith("+")){
    hint="... هتزودى اي طب ";
    answer="";
    }else{
  answer="ERROR";
}
    }
  }
}
