import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///This programme how to creat a stateful widget and how it work
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
   return HomePageView();
  }
}
class HomePageView extends State<HomePage>{
  var sum=0.0;
Map<String,double>InputNum={
  'Num1':0.0,
  'Num2':0.0,
  'Num3':0.0,
};
InputChange(Key,Value){
  setState(() {
    InputNum.update(Key, (value) => double.parse(Value));
  });
}
  addValue(){
  setState(() {
    sum=InputNum['Num1']!+InputNum['Num2']!+InputNum['Num3']!;
  });

  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Sum App'),
       centerTitle: true,
     ),
     body: Padding(
       padding: EdgeInsets.all(40),
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Text('Sum=$sum',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            TextFormField(
              onChanged: (value){
                   InputChange('Num1', value);
              },
              decoration: InputDecoration(
                label: Text('Enter first number'),
                    border: OutlineInputBorder(),
                fillColor: Colors.cyanAccent,
                filled: true,
              ),
            ),
             SizedBox(height: 10,),
             TextFormField(
               onChanged: (value){
                 InputChange('Num2', value);
               },
               decoration: InputDecoration(
               label: Text('Enter second number'),
               border: OutlineInputBorder(),
               fillColor: Colors.cyanAccent,
               filled: true,
             ),),
             SizedBox(height: 10,),
             TextFormField(
               onChanged: (value){
                 InputChange('Num3', value);
               },
               decoration: InputDecoration(
               label: Text('Enter third number'),
               border: OutlineInputBorder(),
               fillColor: Colors.cyanAccent,
               filled: true,
             ),),
             SizedBox(height: 10,),
             Container(
               width: double.infinity,
               child: ElevatedButton(onPressed: (){
                      addValue();
               }, child: Text('Add'),
               style: ElevatedButton.styleFrom(
                 padding: EdgeInsets.all(22),
                 backgroundColor: Colors.deepPurpleAccent,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10),
                 ),

               ),),
             )
           ],

         ),
       ),
     ),
   );
  }

}