import "package:flutter/material.dart";
import "GlobalVariables.dart";
import "UniversityScholarshipsOverview.dart";

class AfterLogin extends StatefulWidget {
  const AfterLogin({Key key}) : super(key: key);

  @override
  AfterLoginState createState() => AfterLoginState();
}

class AfterLoginState extends State<AfterLogin> {
  String s =
      "Hello and very welcome to your respectable university administration.\n\n"
      "This section of the application is designed for you so that you can control "
      "all scholarships information belongs to your university, "
      "you can add, delete, and edit to your scholarships whenever you want.\n\n"
      "Please adhere to the previously signed terms and instructions during registration.\n\n"
      "Just click the button below to continue.";

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
                  ExactAssetImage("assets/images/others/UniversityIcon.png"),
                  color: Colors.black,
                ),
                Text(
                  " ${university.name} university",
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
                image: AssetImage(university.imagePath),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.fromLTRB(9, 35, 10, 0),
                      width: 400,
                      height: 350,
                      color: Color.fromRGBO(0, 0, 0, 0.6),
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
                      /*Text(
                        s,
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),*/
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (ctx) {
                          return UniversityScholarshipsOverview();
                        }));
                      },
                      color: Color.fromRGBO(42, 120, 204, 1),
                      splashColor: Colors.white,
                      child: Text(
                        "View my scholarships",
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
