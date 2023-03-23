import "package:flutter/material.dart";
import "StudentInformations.dart";

class StudentWelcome extends StatefulWidget {
  const StudentWelcome({Key key}) : super(key: key);

  @override
  StudentWelcomeState createState() => StudentWelcomeState();
}

class StudentWelcomeState extends State<StudentWelcome> {
  String s =
      "Any scholarship in the world needs the human factor to determine admission to it, "
      "But which scholarships should we apply for as students with certain specifications?!. "
      "Here comes the idea of bringing the student closer to the appropriate scholarship for"
      " him according to criteria set by the university in cooperation with our application.\n\n"
      "All you have to do as a student is to put the correct information and click on "
      "the search button, and then the available scholarships will appear to you, "
      "arranged according to the percentage of your acceptance rate in them, depending on the initial information.\n\n"
      "There is a link to apply when you click the details button on the scholarship card.\n\n"
      "We wish you good luck in the interviews.";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(42, 120, 204, 1),
          title: Container(
            child: Row(
              children: <Widget>[
                ImageIcon(
                  ExactAssetImage("assets/images/others/StudentIcon.png"),
                  color: Colors.black,
                ),
                Text(
                  " Welcome dear student",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/others/StudentWelcome.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.fromLTRB(9, 10, 10, 0),
                      width: 400,
                      height: 450,
                      color: Color.fromRGBO(0, 0, 0, 0.8),
                      child: Container(
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(3, 10, 10, 0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(s,
                              overflow: TextOverflow.fade,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacement(MaterialPageRoute(builder: (ctx) {
                          return StudentInformation();
                        }));
                      },
                      color: Color.fromRGBO(42, 120, 204, 1),
                      splashColor: Colors.white,
                      child: Text(
                        "Continue to search",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
