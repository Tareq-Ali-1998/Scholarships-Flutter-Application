import "package:flutter/material.dart";

class TheSadLittleGirl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TheSadLittleGirlState();
  }
}

class TheSadLittleGirlState extends State<TheSadLittleGirl> {
  String soSad = "We wish you good luck in the next batch of scholarships.";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            child: Row(
              children: <Widget>[
                ImageIcon(
                  ExactAssetImage("assets/images/others/SadIcon.png"),
                  color: Colors.black,
                ),
                Text(
                  " Good luck next time",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Color.fromRGBO(42, 120, 204, 1),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/others/TheSadLittleGirl.jpg"),
              //colorFilter: new ColorFilter.mode(
              //  Colors.black.withOpacity(1), BlendMode.dstATop),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                  margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(soSad,
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
