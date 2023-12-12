import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/counter_provider.dart';
import 'package:state_management/counterapp.dart';

void main(){
  runApp(StateManagement());
}
class StateManagement extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>CounterProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "State Management",
        home: CounterApp(),
      ),
    );
  }
}

