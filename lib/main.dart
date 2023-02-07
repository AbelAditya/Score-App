import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int score1 = 0;
  int p1 = 0;
  int p2 = 0;
  List sc1 = [0];
  List sc2 = [0];
  int score2 = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "SCORE",
            style: TextStyle(fontFamily: "ZenDots"),
          )),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Color.fromRGBO(63, 63, 63, 1),
        body: SafeArea(
          child: Row(
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$score1",
                    style: TextStyle(fontSize: 50.0, fontFamily: "ZenDots"),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        score1 += 3;
                        if (p1 == sc1.length - 1) {
                          sc1.add(score1);
                          p1++;
                        } else {
                          p1++;
                          sc1[p1] = score1;
                        }
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Text(
                        "3",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        score1 += 2;
                        if (p1 == sc1.length - 1) {
                          sc1.add(score1);
                          p1++;
                        } else {
                          p1++;
                          sc1[p1] = score1;
                        }
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Text(
                        "2",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        score1 += 1;
                        if (p1 == sc1.length - 1) {
                          sc1.add(score1);
                          p1++;
                        } else {
                          p1++;
                          sc1[p1] = score1;
                        }
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Text(
                        "1",
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        child: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          setState(() {
                            if (p1 > 0) {
                              p1--;
                              score1 = sc1[p1];
                            }
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (p1 < sc1.length - 1) {
                              p1++;
                              score1 = sc1[p1];
                            }
                          });
                        },
                        child: Icon(Icons.arrow_forward_ios),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black)),
                      )
                    ],
                  ),
                ],
              )),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$score2",
                      style: TextStyle(fontSize: 50.0, fontFamily: "ZenDots"),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          score2 += 3;
                          if (p2 == sc2.length - 1) {
                            sc2.add(score2);
                            p2++;
                          } else {
                            p2++;
                            sc2[p2] = score2;
                          }
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Text(
                          "3",
                          style: TextStyle(fontSize: 30.0, color: Colors.white),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          score2 += 2;
                          if (p2 == sc2.length - 1) {
                            sc2.add(score2);
                            p2++;
                          } else {
                            p2++;
                            sc2[p2] = score2;
                          }
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Text(
                          "2",
                          style: TextStyle(fontSize: 30.0, color: Colors.white),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          score2 += 1;
                          if (p2 == sc2.length - 1) {
                            sc2.add(score2);
                            p2++;
                          } else {
                            p2++;
                            sc2[p2] = score2;
                          }
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Text(
                          "1",
                          style: TextStyle(fontSize: 30.0, color: Colors.white),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          child: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            setState(() {
                              if (p2 > 0) {
                                p2--;
                                score2 = sc2[p2];
                              }
                            });
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black)),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (p2 < sc2.length - 1) {
                                p2++;
                                score2 = sc2[p2];
                              }
                            });
                          },
                          child: Icon(Icons.arrow_forward_ios),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Container(
          width: 100.0,
          height: 100.0,
          child: FittedBox(
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  score2 = 0;
                  sc1 = [0];
                  sc2 = [0];
                  p1 = 0;
                  p2 = 0;
                  score1 = 0;
                });
              },
              child: Text(
                "RESET",
                style: TextStyle(
                  color: Color.fromRGBO(63, 63, 63, 1),
                ),
              ),
              backgroundColor: Colors.black,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
