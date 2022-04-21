import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Counter());


class Counter extends StatefulWidget {
// Don't forget the constant constructor!
  const Counter();
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  List<List<String>> board=[['','',''],['','',''],['','','']];

  int _counter = 1;
  String _1btn = "";
  String _2btn = "";
  String _3btn = "";
  String _4btn = "";
  String _5btn = "";
  String _6btn = "";
  String _7btn = "";
  String _8btn = "";
  String _9btn = "";
  int resPlayer1=0;
  int resPlayer2=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Padding(
                padding: const EdgeInsets.only(
                    top: 200, bottom: 20, left: 30, right: 30),
                child: Column(
                    children: [
                      const Text("X/O",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 48,
                          )),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 100.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          MaterialButton(
                              color: Colors.brown,
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Colors.black,
                                      width: 3,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(6)),
                              height: 80,
                              child: Text('$_1btn ',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  )),
                              onPressed: () {
                                if (_1btn == "") {
                                  setState(() => _counter++);
                                  setState(() =>
                                  _1btn = _counter % 2 == 0 ? "X" : "O");
                                  board[0][0]=_1btn;
                                  SetO();
                                  String result =CheckEndGame();
                                  if (result != "") {
                                    updateResult(result);
                                    clearBtn();
                                  }
                                }
                              }),
                          MaterialButton(
                              color: Colors.brown,
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Colors.black,
                                      width: 3,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(6)),
                              height: 80,
                              child: Text('$_2btn ',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  )),
                              onPressed: () {
                                if (_2btn == "") {
                                  setState(() => _counter++);
                                  setState(() =>
                                  _2btn = _counter % 2 == 0 ? "X" : "O");
                                  board[0][1]=_2btn;
                                  SetO();
                                  String result=CheckEndGame();
                                  if (result != "") {
                                    updateResult(result);
                                    clearBtn();
                                  }
                                }
                              }),
                          MaterialButton(
                              color: Colors.brown,
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Colors.black,
                                      width: 3,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(6)),
                              height: 80,
                              child: Text('$_3btn ',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  )),
                              onPressed: () {
                                if (_3btn == "") {
                                  setState(() => _counter++);
                                  setState(() =>
                                  _3btn = _counter % 2 == 0 ? "X" : "O");
                                  board[0][2]=_3btn;
                                  SetO();
                                  String result =CheckEndGame();
                                  if (result != "") {
                                    updateResult(result);
                                    clearBtn();
                                  }
                                }
                              }),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          MaterialButton(
                              color: Colors.brown,
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Colors.black,
                                      width: 3,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(6)),
                              height: 80,
                              child: Text('$_4btn ',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  )),
                              onPressed: () {
                                if (_4btn == "") {
                                  setState(() => _counter++);
                                  setState(() =>
                                  _4btn = _counter % 2 == 0 ? "X" : "O");
                                  board[1][0]=_4btn;
                                  SetO();
                                  String result=CheckEndGame();
                                  if (result != "") {
                                    updateResult(result);
                                    clearBtn();
                                  }
                                }
                              }),
                          MaterialButton(
                              color: Colors.brown,
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Colors.black,
                                      width: 3,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(6)),
                              height: 80,
                              child: Text('$_5btn ',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  )),
                              onPressed: () {
                                if (_5btn == "") {
                                  setState(() => _counter++);
                                  setState(() =>
                                  _5btn = _counter % 2 == 0 ? "X" : "O");
                                  board[1][1]=_5btn;
                                  SetO();
                                  String result =CheckEndGame();
                                  if (result != "") {
                                    updateResult(result);
                                    clearBtn();
                                  }
                                }
                              }),
                          MaterialButton(
                              color: Colors.brown,
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Colors.black,
                                      width: 3,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(6)),
                              height: 80,
                              child: Text('$_6btn ',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  )),
                              onPressed: () {
                                if (_6btn == "") {
                                  setState(() => _counter++);
                                  setState(() =>
                                  _6btn = _counter % 2 == 0 ? "X" : "O");
                                  board[1][2]=_6btn;
                                  SetO();
                                  String result=CheckEndGame();
                                  if (result != "") {
                                    updateResult(result);
                                    clearBtn();
                                  }
                                }
                              }),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          MaterialButton(
                              color: Colors.brown,
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Colors.black,
                                      width: 3,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(6)),
                              height: 80,
                              child: Text('$_7btn ',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  )),
                              onPressed: () {
                                if (_7btn == "") {
                                  setState(() => _counter++);
                                  setState(() =>
                                  _7btn = _counter % 2 == 0 ? "X" : "O");
                                  board[2][0]=_7btn;
                                  SetO();
                                  String result=CheckEndGame();
                                  if (result != "") {
                                    updateResult(result);
                                    clearBtn();
                                  }
                                }
                              }),
                          MaterialButton(
                              color: Colors.brown,
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Colors.black,
                                      width: 3,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(6)),
                              height: 80,
                              child: Text('$_8btn ',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  )),
                              onPressed: () {
                                if (_8btn == "") {
                                  setState(() => _counter++);
                                  setState(() =>
                                  _8btn = _counter % 2 == 0 ? "X" : "O");
                                  board[2][1]=_8btn;
                                  SetO();
                                  String result=CheckEndGame();
                                  if (result != "") {
                                    updateResult(result);
                                    clearBtn();
                                  }
                                }
                              }),
                          MaterialButton(
                              color: Colors.brown,
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Colors.black,
                                      width: 3,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(6)),
                              height: 80,
                              child: Text('$_9btn ',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  )),
                              onPressed: () {
                                if (_9btn == "") {
                                  setState(() => _counter++);
                                  setState(() =>
                                  _9btn = _counter % 2 == 0 ? "X" : "O");
                                  board[2][2]=_9btn;
                                  SetO();
                                  String result=CheckEndGame();
                                  if (result != "") {
                                    updateResult(result);
                                    clearBtn();
                                  }
                                }
                              }),
                        ],
                      ),
                      const Padding(
                          padding: EdgeInsets.only(top: 30.0))
                      ,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("$resPlayer1",
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 48,
                              )),
                          Text("$resPlayer2",
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 48,
                              ))
                          //const Padding(
                          // padding: EdgeInsets.only(bottom: 100.0))
                        ],
                      )
                    ]))));
  }
//end game
  String CheckEndGame() {
    //if (_1btn != "" && _1btn != "" && _2btn != "" && _3btn != "" &&
    //   _4btn != "" && _4btn != "" && _5btn != "" && _6btn != "" &&
    //_7btn != "" && _8btn != "" && _9btn != "") {
    if (_1btn == _2btn && _1btn == _3btn) {
      return _1btn;
    } else if (_4btn == _5btn && _4btn == _6btn) {
      return _4btn;
    } else if (_7btn == _8btn && _7btn == _9btn) {
      return _7btn;
    } else if (_1btn == _4btn && _1btn == _7btn) {
      return _1btn;
    } else if (_2btn == _5btn && _2btn == _8btn) {
      return _2btn;
    } else if (_3btn == _6btn && _3btn == _9btn) {
      return _3btn;
    } else if (_1btn == _5btn && _1btn == _9btn) {
      return _1btn;
    } else if (_3btn == _5btn && _3btn == _7btn) {
      return _3btn;
    } else {
      return "";
    }
  }

  //ايجاد افضل حركة ممكنة
  String bestPossibleMove(List<List<String>> board,bool Xturn) {
    String result = Xturn ? "-1" : "1";
    String endGame=CheckEndGame();
    if (endGame!="")
    {
      return endGame;
    }
    for(int i=0;i<3;i++)
    {
      for(int j=0;j<3;j++)
      {
        if(board[i][j]!='')
        {
          continue;
        }
        board[i][j]=Xturn ? 'X':'O';
        String tempResult=bestPossibleMove(board,!Xturn);
        board[i][j]='';
        if((Xturn==int.parse( tempResult) > int.parse(result) )||(!Xturn && int.parse(tempResult) < int.parse(result)))
        {
          result=tempResult;
        }

      }
    }
    return result;
  }
  // Set O random
  void SetO()
  {
    int overflow =0;
    String bestMove="-1";
    if (_counter % 2 == 0 ) {
      bool b = true;
      var rand = new Random();
      try {
        while (b) {
          if (CheckEndGame() != "") {
            b = false;
          }
          int row = rand.nextInt(3);
          int col = rand.nextInt(3);
          print(overflow);
          print("row=$row : col=$col :board=  $board");

          if (board[row][col] == '') {
            overflow++;
            String res = bestPossibleMove(board, true);
            if (overflow >= 10) {
              bestMove = "0";
            }
            else if (overflow >= 20) {
              bestMove = "1";
            }
            if (res == bestMove) {
              Move(row, col);
              _counter++;
              b = false;
            }
          }
        }
      }
      catch (e) {}
      /* for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
         if (board[i][j] == '') {
            String res = bestPossibleMove(board, true);
            if (res == "-1")
            {
              Move(i, j);
              _counter++;
              return;
            }
          }
        }
      }
     */
    }
  }
  void Move(int i,int j)
  {
    if (i==0 && j==0 )
    {_1btn='O';
    board[i][j]='O';
    }
    else if(i==0 && j==1)
    {_2btn='O';
    board[i][j]='O';
    }
    else if(i==0 && j==2)
    {_3btn='O';
    board[i][j]='O';
    }
    else if(i==1 && j==0)
    {_4btn='O';
    board[i][j]='O';
    }
    else if(i==1 && j==1)
    {_5btn='O';
    board[i][j]='O';
    }
    else if(i==1 && j==2)
    {_6btn='O';
    board[i][j]='O';
    }
    else if(i==2 && j==0)
    {  _7btn='O';
    board[i][j]='O';
    }
    else if(i==2 && j==1)
    {_8btn='O';
    board[i][j]='O';
    }
    else if(i==2 && j==2)
    {_9btn='O';
    board[i][j]='O';
    }
  }
  void updateResult(String result)
  {
    if (result=="X")
    { resPlayer1++;}
    else if (result=="O")
    {resPlayer2++;}
  }
  /* void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Alert!!"),
          content: const Text("You are awesome!"),
          actions: <Widget>[
            TextButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  */
  clearBtn() {
    List<List<String>> board=[['','',''],['','',''],['','','']];
    _1btn = "";
    _2btn = "";
    _3btn = "";
    _4btn = "";
    _5btn = "";
    _6btn = "";
    _7btn = "";
    _8btn = "";
    _9btn = "";
    _counter=1;
  }
}



