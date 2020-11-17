import 'package:flutter/material.dart';
import 'package:quizzassign/quizpage.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<String> images = [
    "images/code.png",
    "images/acc.png",
    "images/isl.png",
  ];

  Widget customcard(String langname, String images) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            // in changelog 1 we will pass the langname name to ther other widget class
            // this name will be used to open a particular JSON file
            // for a particular language
            builder: (context) => getjson(langname),
          ));
        },
        child: Material(
          color: Colors.cyan,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      height: 200,
                      width: 200,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage(
                            images,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    langname,
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "In this section You got Randomly MCQS of Your Selected Tab",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Quick Quiz"),
      ),
      body: ListView(
        children: <Widget>[
          customcard("Computer Science", images[0]),
          customcard("Acounting & Finance", images[1]),
          customcard("Islamic-Studies", images[2]),
        ],
      ),
    );
  }
}
