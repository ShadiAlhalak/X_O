import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Counter());


class Counter extends StatefulWidget {
// Don't forget the constant constructor!
  const Counter();
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = -1;
  String _1btn = "";
  String _2btn = "";
  String _3btn = "";
  String _4btn = "";
  String _5btn = "";
  String _6btn = "";
  String _7btn = "";
  String _8btn = "";
  String _9btn = "";
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
                                if (CheckEndGame() != "") {
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
                                if (CheckEndGame() != "") {
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
                                if (CheckEndGame() != "") {
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
                                if (CheckEndGame() != "") {
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
                                if (CheckEndGame() != "") {
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
                                if (CheckEndGame() != "") {
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
                                if (CheckEndGame() != "") {
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
                                if (CheckEndGame() != "") {
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
                                if (CheckEndGame() != "") {
                                  clearBtn();
                                }
                              }
                            }),
                      ],
                    ),
                  ],
                ))));
  }

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
    _1btn = "";
    _2btn = "";
    _3btn = "";
    _4btn = "";
    _5btn = "";
    _6btn = "";
    _7btn = "";
    _8btn = "";
    _9btn = "";
  }
}



