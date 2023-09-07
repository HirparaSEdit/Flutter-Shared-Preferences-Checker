import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text("My Second Scrren"),
  ),
  body: Container(
    height: double.infinity,
    width: double.infinity,
    color: Colors.blue.shade100,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("This is Another page which I Connect to this Project for Navigator Cheking",style: TextStyle(fontSize: 50,
          color: Colors.black,fontWeight: FontWeight.bold,),
  ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Back'))
        ],
      ),
    ),
)
);

  }

}