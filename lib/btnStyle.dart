import 'package:flutter/material.dart';

class BTN extends StatelessWidget {
  String txt;
  int indx;
  Function onboard;
  BTN(this.txt,this.onboard,this.indx);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
                side: BorderSide(color: Colors.white)),
            onPressed: () {
              onboard(indx);
            },
            child: Text(txt,style: TextStyle(fontSize: 30 ,color: Colors.white,fontWeight: FontWeight.bold),)));
  }
}
