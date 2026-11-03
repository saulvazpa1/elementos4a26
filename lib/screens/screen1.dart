import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screen2.dart';
import 'package:flutter_application_1/screens/screen3.dart';
import 'package:flutter_application_1/screens/screen4.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text
        ('Pantalla 1',
        style:TextStyle(color:Color.fromARGB(255, 255, 255, 255))),
        backgroundColor: const Color.fromARGB(255, 51, 64, 154),
      ),
     body : Container(
            color: Color.fromARGB(255, 2, 2, 112),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                  Text(
                    'Selecciona una opcion',
                    style: TextStyle(fontSize: 24,
                    fontWeight:FontWeight.bold,color: Colors.white)
                  ),
                  SizedBox(height: 60),      
                  boton('Ejmeplo de Rows',const Color.fromARGB(255, 135, 166, 39),context,Screen2()),
                  SizedBox(height: 40),  
                  boton('Ejmeplo de ListView',const Color.fromARGB(255, 2, 128, 21),context,Screen3()),
                  SizedBox(height: 40),  
              
                  boton('Entrada de datos',const Color.fromARGB(255, 186, 4, 19),context,Screen4()),
              
                ],
              ),
            ),
      )
    );
  }

  Widget boton(String texto, Color color1, BuildContext context, StatelessWidget screen,){
    return ElevatedButton(
      onPressed: (){//accion del boton
      Navigator.push(
        context,
      MaterialPageRoute(builder: (context) => screen));

      }, 
        style:ElevatedButton.styleFrom(
          backgroundColor: color1,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),//espacio del margen
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          )
        ),
        child: Text(
        texto,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),),
      );
  }
}