import 'package:flutter/material.dart';
import 'package:xo/Player%20data.dart';
import 'package:xo/XO.dart';

class Login extends StatelessWidget {
  static const String routeName="Login";

  var name1=TextEditingController();
  var name2=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Card(
          margin: EdgeInsets.only(top: 100,left: 10,right: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          shadowColor: Colors.cyanAccent,


          elevation:100,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  controller: name1,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    suffixIcon:Icon(Icons.drive_file_rename_outline_sharp),
                    suffixIconColor: Colors.black,
                    labelText: "enter Name Player_1",
                    labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                    enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30) ,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30) ,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  controller: name2,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    suffixIcon:Icon(Icons.drive_file_rename_outline_sharp),
                    suffixIconColor: Colors.black,
                    labelText: "enter Name Player_2",
                    labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                    enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30) ,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30) ,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: 200,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.tealAccent.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, XO.Routename,arguments: Player(name1.text, name2.text));
                    }, child: Text("PLAY")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
