import 'package:flutter/material.dart';
import 'package:xo/Player%20data.dart';
import 'package:xo/btnStyle.dart';

class XO extends StatefulWidget {
  static const String Routename = "xo";

  @override
  State<XO> createState() => _XOState();
}

class _XOState extends State<XO> {
  int Score1 = 0;
  int Score2 = 0;


  List<String> onboard = ["", "", "", "", "", "", "", "", ""];

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as Player;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "X-O",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "${args.name1}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "$Score1",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "${args.name2}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "$Score2",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BTN(onboard[0], OnBoard, 0),
                BTN(onboard[1], OnBoard, 1),
                BTN(onboard[2], OnBoard, 2),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BTN(onboard[3], OnBoard, 3),
                BTN(onboard[4], OnBoard, 4),
                BTN(onboard[5], OnBoard, 5),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BTN(onboard[6], OnBoard, 6),
                BTN(onboard[7], OnBoard, 7),
                BTN(onboard[8], OnBoard, 8),
              ],
            ),
          ),
        ],
      ),
    );
  }

  int c = 0;

  void OnBoard(index) {
    setState(() {
      if (onboard[index].isNotEmpty) {
        return;
      }
      if (c % 2 == 0) {
        print("c= $c");
        onboard[index] = "X";
        c++;
        bool win=check_win("X");
        if (win) {
          Score1 += 1;
          reset();
          c=0;
        }
      } else {
        print("c= $c");
        onboard[index] = "O";
        c++;
        bool win=check_win("O");
        if (win) {
          Score2 += 1;
          reset();
          c=0;
        }
      }

      if(c==9)
        {
          reset();
          c=0;
        }
    });
  }

  bool check_win(String txt) {
    //check Row
    for (int i = 0; i < 9; i += 3) {
      if (onboard[i] == txt && onboard[i + 1] == txt && onboard[i + 2] == txt) {
        return true;
      }
    }
    //====================================//
    //check cloum
    for (int i = 0; i < 3; i++) {
      if (onboard[i] == txt && onboard[i + 3] == txt && onboard[i + 6] == txt) {
        return true;
      }
      ;
    }

    //================================//
    // diag
    if (onboard[0] == txt && onboard[4] == txt && onboard[8] == txt) {
      return true;
    }
    if (onboard[2] == txt && onboard[4] == txt && onboard[6] == txt) {
      return true;
    }
    return false;
  }

  void reset() {
    onboard = ["", "", "", "", "", "", "", "", ""];
  }
}
