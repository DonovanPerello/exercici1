import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {

  int contador = 0; 
  void _sumar(){
    setState(() {
      contador++;
    }); 
  }
  void _restar(){
    setState(() {
      contador --;
    });
  }
  void _resetear(){
    setState(() {
      contador = 0;
    });
  }
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
      floatingActionButton: _crearBotons()
);}

Widget _crearBotons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
SizedBox(width: 30.0), 
  FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _resetear),
  
  Expanded(child: SizedBox()), 
  
  FloatingActionButton(child: Icon(Icons.remove), onPressed: _restar),
  SizedBox(width: 5.0), 
  FloatingActionButton(child: Icon(Icons.add), onPressed: _sumar),
    ],
  );
}
}