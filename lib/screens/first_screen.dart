import 'package:flutter/material.dart';


class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(color: Colors.red, width: 100, height: 100,),
            Container(color: Colors.blue, width: 50, height: 50,),
          ],),
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(color: Colors.blue, width: 100, height: 100,),
            Container(color: Colors.red, width: 50, height: 50,),
          ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(color: Colors.cyan,width: 50,height: 50,),
            Container(color: Colors.pinkAccent,width: 50,height: 50,),
            Container(color: Colors.purple,width: 50,height: 50,),
          ],
        ),
        Container(color: Colors.yellow, height: 30, width: 300,
          child: const Text("Diamente amarelo",
              style: TextStyle(color: Colors.black, fontSize: 28),
              textAlign:TextAlign.center),),
        ElevatedButton(onPressed: () {
        }, child: const Text("Aperte o botão!"),)
      ],);
  }
}




