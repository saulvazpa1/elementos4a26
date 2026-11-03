
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {     
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 2',
        style:TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(221, 56, 148, 181),
      ),
      body: Center(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             SizedBox(width:30),
            mostrarImagen(1),
              SizedBox(width:30),
            mostrarImagen(3),
              SizedBox(width:30),
            mostrarImagen(4),
            

          ],
        ) ,
      ),


    );
  }
    Widget mostrarImagen(int numImagen){
        String nombreImagen = '';
      switch(numImagen){
        case 1: nombreImagen = 'assets/imgs/img1.jpg';
        break;

        case 2:
        nombreImagen = 'assets/imgs/img2.jpg';
         break;
        case 3:
        nombreImagen = 'assets/imgs/img3.jpg';
         break;

        case 4:
        nombreImagen = 'assets/imgs/img4.jpg';
         break;
         



      }
      return Image.asset(
        nombreImagen,
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      );

    }
}
