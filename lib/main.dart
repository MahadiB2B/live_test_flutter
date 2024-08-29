import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return const MaterialApp(home: HomeActivity(),
    debugShowCheckedModeBanner:false,

  );
  }
}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});
  @override
  Widget build (BuildContext context){
    return Scaffold(
appBar: AppBar(
  title:const Text("Flutter App",),
  backgroundColor: Colors.green,
  centerTitle:false,
  toolbarHeight: 60,
  toolbarOpacity: 1,
  titleSpacing: 40,
  foregroundColor: Colors.white,
  actions: [IconButton(onPressed: (){}, icon: Icon(Icons.account_circle)),
    IconButton(onPressed: (){}, icon: Icon(Icons.add_alert_rounded)),
    IconButton(onPressed:(){}, icon: Icon(Icons.more_vert)),
  ],
),

    );
  }
}