import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }

}
class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
  return MyHomepageUi();
  }

  }
class MyHomepageUi extends State<HomePage> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(count.toString(),style: TextStyle(fontSize: 30),),
      ),
        floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
    onPressed: (){
          setState(() {
            count+=1;
          });
          }
        ),
    );
  }
}