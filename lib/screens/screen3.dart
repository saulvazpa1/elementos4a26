import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});


  final dogs = const[
    'Bot',
    'Kc',
    'Black',
    'Candy',
    'Solovino',
  ];

  final cats=const[
    'Moji',
    'Java',
    'Maria',
    'Gatofeo',
    'Felix',
    'Frenchie',

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ventana 3'),
      ),
      body: ListView(
        children: [
          ...dogs.map((dog)=> ListTile(
            leading: Icon(Icons.pets_rounded),
            title: Text(dog),
            subtitle: Text('Un perro '),
            trailing: Icon(Icons.arrow_forward),
            tileColor: const Color.fromARGB(255, 200, 249, 249),
            iconColor: const Color.fromARGB(255, 7, 84, 148),
            textColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(15)
            ),
          ),
         ),

         Divider(),

         ...cats.map((cat)=> ListTile(
            leading: Icon(Icons.pets_rounded),
            title: Text(cat),
            subtitle: Text('Gato guaton'),
            trailing: Icon(Icons.arrow_forward),
             tileColor: const Color.fromARGB(255, 233, 255, 213),
          ),
         ),

         

          

        ],
      ),
    );
  }
}