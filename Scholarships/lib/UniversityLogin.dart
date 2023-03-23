import "package:flutter/material.dart";
import "UniversityModificationPowers.dart";
import "GlobalVariables.dart";

class UniversityLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UniversityLoginState();
  }
}

class UniversityLoginState extends State<UniversityLogin> {
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  String nameError = "";
  String passwordError = "";
  bool passwordObscureText = true;

  void login(BuildContext context) {
    setState(() {
      String name = nameController.text;
      String password = passwordController.text;
      int index = -1;
      for (int i = 0; i < universities.length; i++) {
        if (name == universities[i].name) {
          index = i;
          break;
        }
      }
      if (index == -1) {
        if (name.length == 0) {
          nameError = "Enter your university name to login.";
          passwordError = "";
        } else if (name[0] != name[0].toUpperCase()) {
          nameError = "The first letter should be uppercase.";
          passwordError = "";
        } else {
          nameError = "invalid university name.";
          passwordError = "";
        }
      } else {
        if (password == universities[index].password) {
          university = universities[index];
          universityIndex = index;
          LoadUniversityScholarships(index);
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (ctx) {
            return UniversityModificationPowers();
          }));
        } else {
          nameError = "";
          passwordError = "This password is incorrect.";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          setState(() {
            currentFocus.unfocus();
          });
        }
      },
      child: MaterialApp(
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
                image: AssetImage("assets/images/others/UniversityLogin.jpg"),
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(1), BlendMode.dstATop),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  child: Container(
                    decoration: new BoxDecoration(
                        border: Border.all(color: Colors.black, width: 5),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromRGBO(255, 255, 255, 0.98)),
                    margin: EdgeInsets.fromLTRB(20, 150, 25, 0),
                    child: Column(
                      children: [
                        Container(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "University name",
                              labelStyle: TextStyle(
                                color: Color.fromRGBO(42, 120, 204, 1),
                                fontSize: 20,
                              ),
                              hintText: "Enter your university name..",
                              hintStyle: TextStyle(color: Colors.black),
                              prefixIcon: Padding(
                                padding: EdgeInsets.fromLTRB(5, 0, 7, 0),
                                child: ImageIcon(
                                  AssetImage(
                                      "assets/images/others/UniversityIcon.png"),
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            controller: nameController,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 25,
                  decoration: new BoxDecoration(
                      border: (nameError.length > 0)
                          ? Border.all(color: Colors.black, width: 2)
                          : null,
                      color: (nameError.length > 0)
                          ? Color.fromRGBO(255, 255, 255, 0.98)
                          : Color.fromRGBO(255, 255, 255, 0)),
                  margin: EdgeInsets.fromLTRB(25, 0, 30, 30),
                  child: Text(nameError,
                      style: TextStyle(color: Colors.red, fontSize: 17)),
                ),
                Container(
                  decoration: new BoxDecoration(
                      border: Border.all(color: Colors.black, width: 5),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromRGBO(255, 255, 255, 0.98)),
                  margin: EdgeInsets.fromLTRB(20, 30, 25, 0),
                  child: Column(
                    children: [
                      Container(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(
                              color: Color.fromRGBO(42, 120, 204, 1),
                              fontSize: 20,
                            ),
                            hintText: "Enter your university password..",
                            hintStyle: TextStyle(color: Colors.black),
                            prefixIcon: Padding(
                              padding: EdgeInsets.fromLTRB(5, 0, 7, 0),
                              child: Icon(
                                Icons.vpn_key_outlined,
                                color: Colors.black,
                              ),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                passwordObscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  passwordObscureText = !passwordObscureText;
                                });
                              },
                              color: Colors.blue,
                            ),
                          ),
                          controller: passwordController,
                          obscureText: passwordObscureText,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 25,
                  decoration: new BoxDecoration(
                      border: (passwordError.length > 0)
                          ? Border.all(color: Colors.black, width: 2)
                          : null,
                      color: (passwordError.length > 0)
                          ? Color.fromRGBO(255, 255, 255, 0.98)
                          : Color.fromRGBO(255, 255, 255, 0)),
                  margin: EdgeInsets.fromLTRB(25, 0, 30, 30),
                  child: Text(passwordError,
                      style: TextStyle(color: Colors.red, fontSize: 17)),
                ),
                Container(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  height: 40,
                  width: 130,
                  margin: EdgeInsets.fromLTRB(1, 30, 1, 1),
                  child: RaisedButton(
                    onPressed: () {
                      return login(context);
                    },
                    color: Color.fromRGBO(42, 120, 204, 1),
                    splashColor: Colors.white,
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20, color: Colors.white),
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
