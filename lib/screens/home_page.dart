import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{
  int contador = 0;
  @override
Widget build(context) {
  return Scaffold(appBar: AppBar(
    title: 
      Text("Contador"),
    centerTitle: 
      true,),
    body: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Nombre de clicks"), Text("$contador")],
        )),
      floatingActionButton:FloatingActionButton(
        onPressed: () { 
          contador++;
          print(contador); 
          },child: Icon(Icons.add),) 
          ,);
}
}