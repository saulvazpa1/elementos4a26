import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});


  final Map <String, String> perros = const{ //pares de valores MAPA
    'Ginger' : 'assets/imgs/images1.jpg',//key + valor
    'Edgar' : 'assets/imgs/images2.jpg',

    'La bot' : 'assets/imgs/images3.jpg',

    'KC' : 'assets/imgs/images4.jpg',

    'Blackie' : 'assets/imgs/images5.jpg',

  };


 
  final cats=const[//arreglo
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

          ...perros.entries.map((perro){
            return _tileDog(
              perro.key, 
              perro.value, 
              const Color.fromARGB(255, 200, 249, 249),
              const Color.fromARGB(255, 7, 84, 148),
              Colors.black,
              );
          }),//entries todos lo valores del mapa para llamarlos
          
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
  Widget _tileDog(
    String dogName,
    String dogImage,
    Color tileColor,
    Color iconColor,
    Color textColor
  ){  //metodo privado
      final tile = ListTile(
              leading: Image.asset(dogImage,width:50 , height:50),
              title: Text(dogName),
              subtitle: Text('Un ez gato '),
              trailing: Icon(Icons.arrow_forward),
              tileColor: tileColor,
              iconColor:iconColor,
              textColor:textColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(15)
              ),
      );

      final espacio = SizedBox(height: 10);
      return Column(
        children: [tile,espacio]);


  }
}