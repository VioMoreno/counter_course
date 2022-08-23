
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    const fontSize25 = TextStyle(fontSize: 25); 
    int counter = 10;

    return Scaffold (
      appBar: AppBar(
        title:const Text('HomeScreen'), 
        elevation: 10.0, 
      ),
      backgroundColor: Colors.white70,
      body: Center(
        child:  Column( 
           mainAxisAlignment: MainAxisAlignment.center,
           children: const <Widget> [
            Text('Número de Clicks', style: fontSize25 ),
            Text ('10', style: fontSize25 ),
           ]
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton (
        child: const Icon(Icons.add),
        onPressed: () {
         counter ++;
         print ('hola mundo: $counter');}
        
    )
    );
  }

}