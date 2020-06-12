import 'package:bayrak_bulmaca/main.dart';
import 'package:bayrak_bulmaca/models/Questions.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  static Questions _question;
  List<String> _shuffledChoices = [];
  int score;

  @override
  void initState() {
    super.initState();
    _question = getQuestion();
    for (var i = 0; i < 4; i++) {
      _shuffledChoices.add(_question.flagNames[i]);
    }
    //_shuffledChoices = _question.flagNames;
    _shuffledChoices.shuffle();

    _getSharedScore();
  }

  _controlCorrectness(String text) {
    String correctAnswer = _question.flagNames[0];
    if (correctAnswer == text) {
      score = score + 1;
      _saveScore(score);
      _createAlertDialog(
          context, "Tebrikler! $text cevabın doğru", "assets/logo/check.png");
    } else {
      score = score - 1;
      _saveScore(score);
      _createAlertDialog(
          context,
          "Üzgünüm cevabın yanlış. \n Doğru cevap: $correctAnswer",
          "assets/logo/cross.png");
    }
  }

  _createButton(String text) {
    return Container(
      width: 200,
      child: FlatButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        onPressed: () {
          _controlCorrectness(text);
        },
      ),
    );
  }

  _createAlertDialog(BuildContext context, String text, String imagePath) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.deepOrange,
            elevation: 5.0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            content: Container(
              height: 120,
              child: Column(
                children: <Widget>[
                  Container(
                    child: Image.asset(imagePath),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                      child: Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  )),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.white)),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return MyHomePage();
                  }));
                },
                child: Text(
                  "Ana menüye dön",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.white)),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return QuestionPage();
                  }));
                },
                child: Text("Sıradaki soru",
                    style: TextStyle(color: Colors.white)),
              )
            ],
          );
        });
  }

  Future<void> _saveScore(int score) async {
    final sharedPrefTool = await SharedPreferences.getInstance();
    await sharedPrefTool.setInt("score", score);
  }

  Future<void> _getSharedScore() async {
    final sharedPrefTool = await SharedPreferences.getInstance();
    final sharedScore = sharedPrefTool.getInt("score");
    if (sharedScore == null) {
      setState(() {
        score = 0;
      });
    } else {
      setState(() {
        score = sharedScore;
      });
    }
    print(sharedScore);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bayrak Bulmaca"),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return MyHomePage();
            }));
          },
        ),
        actions: <Widget>[
          Center(
            child: Text(
              "Puan: " + score.toString(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.deepOrange,
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                          ],
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.grey[300])),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              _question.questionFlag,
                              cacheWidth: 450,
                              cacheHeight: 300,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepOrange,
                  child: Center(
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Yukarıdaki bayrak aşağıdaki ülkelerden hangisine aittir?",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.deepOrange,
                    child: Center(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            _createButton(_shuffledChoices[0]),
                            _createButton(_shuffledChoices[1]),
                            _createButton(_shuffledChoices[2]),
                            _createButton(_shuffledChoices[3]),
                            SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
