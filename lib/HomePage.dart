import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomepageView();
  }

}

class HomepageView extends State<HomePage>{
  List ToDoList=['Argentina','Brazil','Germany','France','Japan','India','Chin'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do App'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 10,
                child: Row(
                  children: [
                    Expanded(
                      flex:70,
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(),
                            label: Text('List Item'),
                          ),
                        ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      flex: 30,
                        child:ElevatedButton(
                          onPressed: (){},
                         child: Text('Add'),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(22),
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            )
                          ),
                        ),
                    )
                  ],
                ),

            ),
            Expanded(
              flex: 90,
                child: ListView.builder(
                  itemCount: ToDoList.length,
                    itemBuilder:(context,index){
                    return Card(
                      child: SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(8),
                        ),
                      ),
                    );
                    }
                ),
            ),
          ],
        ),
      ),
    );
  }
}