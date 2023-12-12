import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/counter_provider.dart';

class  CounterApp extends StatefulWidget{
  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    final state =Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        centerTitle: true,
      ),
      floatingActionButton: Row(
    mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(onPressed: (){
            state.increment();
          },child: Icon(Icons.add),),
          SizedBox(width: 30,),
          FloatingActionButton(onPressed: (){
            state.decrement();
          },child: Icon(Icons.remove_rounded),),


        ],
    ),
      body: Center(child: Text("${state.count}",style: TextStyle(fontSize: 50),),),
    );
  }
}