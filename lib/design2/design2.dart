import 'package:flutter/material.dart';

class Design2 extends StatelessWidget {
  static const String routeName = "Busniess card app";

  const Design2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            const SizedBox(height: 70,),
            const CircleAvatar(
              radius: 125,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage("assets/design2/girl.jpg"),
              ),
            ),
            const Text(
              "Youstina Bishay",
              style: TextStyle(fontSize: 30, fontFamily: 'Pacifico'),
            ),
            const Text(
              "Flutter Developer",
              style: TextStyle(
                  fontSize: 22,
                  color: Color(0xff4f5555),
                  fontWeight: FontWeight.bold),
            ),
            const Divider(
              height:20,
              thickness:3,
              color: Color(0xff4f5555),
        indent:60,
              endIndent:60,
            ),
            Container(
                padding:const EdgeInsets.symmetric(horizontal: 5),
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(20),
                  color: Colors.white,

                ),
                margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.width * .03,
                  horizontal: MediaQuery.of(context).size.width * .07,
                ),
                child:const TextField(
                  decoration:InputDecoration(
                      border:InputBorder.none,
                      prefixIcon:Icon(Icons.call),
                    hintText: "(01) 225555533",
                    hintStyle:TextStyle(color:Colors.grey)
                  ),
                )),
            Container(
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(20),
                color: Colors.white,

              ),
                padding: const EdgeInsets.symmetric(horizontal: 5),
                margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.width * .03,
                  horizontal: MediaQuery.of(context).size.width * .07,
                ),
                child:const TextField(
                  decoration:InputDecoration(
                    border:InputBorder.none,
                    prefixIcon:Icon(Icons.email),
                    hintText: "tina@gmail.com",
                    hintStyle:TextStyle(color:Colors.grey)
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
