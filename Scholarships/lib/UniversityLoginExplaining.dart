import "package:flutter/material.dart";
import "UniversityLogin.dart";

class UniversityLoginExplaining extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UniversityLoginExplainingState();
  }
}

class UniversityLoginExplainingState extends State<UniversityLoginExplaining> {
  String wellcome =
      "The administration of this application welcomes all official universities "
      "that would like to offer their scholarships on "
      "our application, just contact us on our email:";

  String ourEmail = "scholarship-application@gmail.com";

  String theLastWord =
      "We are waiting for your emails for a better students life.";

  String warning =
      "The following login process is only intended for the universities that work with us officially.";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.login,
                  color: Colors.black,
                ),
                Text(
                  " Login as a University",
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
              image: AssetImage(
                  "assets/images/others/UniversityLoginExplaining.gif"),
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
                  margin: EdgeInsets.fromLTRB(10, 40, 10, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(wellcome,
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Container(
                    width: double.infinity,
                    color: Colors.white,
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.email_outlined,
                          color: Color.fromRGBO(42, 120, 204, 1),
                        ),
                        Text(
                          ourEmail,
                          style: TextStyle(
                              color: Color.fromRGBO(42, 120, 204, 1),
                              fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      theLastWord,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      warning,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 250,
                  margin: EdgeInsets.fromLTRB(0, 120, 0, 0),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (ctx) => UniversityLogin(),
                        ),
                      );
                    },
                    color: Color.fromRGBO(42, 120, 204, 1),
                    splashColor: Colors.white,
                    child: Text(
                      "Continue to login",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
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
