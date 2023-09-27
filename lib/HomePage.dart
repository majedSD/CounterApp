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
  List ToDoList=[];
  String item="";
  InputChange(content){
    setState(() {
     item=content;
    });
  }
  addItem(){
    setState(() {
      ToDoList.add({'item':item});
    });
  }
  RemoveItem(index){
    setState(() {
      ToDoList.removeAt(index);
    });
  }
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 10,
                child:Row(
                  children: [
                    Expanded(
                      flex: 70,
                        child:TextFormField(
                          onChanged: (content){InputChange(content);},
                          decoration: InputDecoration(
                            label: Text('To do something'),
                            border: OutlineInputBorder(
                            ),
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                        flex: 30,
                        child: ElevatedButton(
                          onPressed: (){
                           addItem();
                  },
                          child: Text('Add'),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(24),
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)
                            ),
                          ),
                        )
                    ),
                  ],
                ),
            ),
            Expanded(
              flex: 90,
                child: ListView.builder(
                     itemCount: ToDoList.length,
                    itemBuilder: (context,index){
                      return Card(
                        child: SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            alignment: Alignment.center,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 80,
                                    child:Text(ToDoList[index]['item'].toString(),)
                                ),
                                Expanded(
                                  flex: 20,
                                    child: TextButton(
                                      onPressed: (){
                                        RemoveItem(index);
                                      },
                                      child: Icon(Icons.delete),
                                    ),
                                ),
                              ],
                            ),
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