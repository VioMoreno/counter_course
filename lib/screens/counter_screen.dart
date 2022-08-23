
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 10;

  void increase () {
    counter ++;
    setState(() {});
  }

   void decrease () {
    counter --;
    setState(() {});
  }

   void reset () {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    
    const fontSize25 = TextStyle(fontSize: 25); 
    
    return Scaffold (
      appBar: AppBar(
        title:const Text('CounterScreen'), 
        elevation: 10.0, 
      ),
      backgroundColor: const Color.fromARGB(255, 198, 221, 240),
      body: Center(
        child:  Column( 
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget> [
            const Text('Número de Clicks', style: fontSize25 ),
            Text ('$counter', style: fontSize25 ),
           ]
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:  CustomFloatingActions(
        increaseFn: increase, decreaseFn: decrease, resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn; 
  final Function decreaseFn; 
  final Function resetFn; 

  const CustomFloatingActions({
    Key? key, 
    required this.increaseFn, 
    required this.decreaseFn, 
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        FloatingActionButton (
          onPressed: () => increaseFn (),
          child: const  Icon(Icons.exposure_plus_1) //() => setState(() => counter++), 
       ),
         const SizedBox ( width: 20),

        FloatingActionButton (
          onPressed: () => resetFn (),
          child:  const Icon(Icons.restart_alt) //() => setState(() => counter = 0), 
        ),

         const SizedBox ( width: 20),

        FloatingActionButton (
          onPressed: () => decreaseFn (),
          child: const  Icon(Icons.exposure_minus_1) //() => setState(() => counter--), 
        ),

      ],
    );
  }
}