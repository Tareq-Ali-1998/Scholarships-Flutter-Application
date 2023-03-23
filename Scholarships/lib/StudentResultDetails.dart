import "package:flutter/material.dart";
import "GlobalVariables.dart";
import 'package:url_launcher/url_launcher.dart';

class StudentResultDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(42, 120, 204, 1),
          title: Container(
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.details,
                  color: Colors.black,
                ),
                Text(
                  " Scholarship informations",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "${universities[result.scholarship.universityIndex].imagePath}"),
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(1), BlendMode.dstATop),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text(
                            " University name:",
                            style: TextStyle(fontSize: 22, color: Colors.blue),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(20, 3, 0, 3),
                          child: Text(
                            "${universities[result.scholarship.universityIndex].name}.",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text(
                            " University continent:",
                            style: TextStyle(fontSize: 22, color: Colors.blue),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(20, 3, 0, 3),
                          child: Text(
                            "${universities[result.scholarship.universityIndex].continent}.",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text(
                            " University country:",
                            style: TextStyle(fontSize: 22, color: Colors.blue),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(20, 3, 0, 3),
                          child: Text(
                            "${universities[result.scholarship.universityIndex].country}.",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text(
                            " University city:",
                            style: TextStyle(fontSize: 22, color: Colors.blue),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(20, 3, 0, 3),
                          child: Text(
                            "${universities[result.scholarship.universityIndex].city}.",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(7, 5, 0, 0),
                          child: Text(
                            "University rank(QS world university rankings):",
                            style: TextStyle(fontSize: 22, color: Colors.blue),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(20, 3, 0, 3),
                          child: Text(
                            "The rank of this university is ${universities[result.scholarship.universityIndex].rank} on the world.",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text(
                            " University students number:",
                            style: TextStyle(fontSize: 22, color: Colors.blue),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(20, 3, 0, 3),
                          child: Text(
                            "${universities[result.scholarship.universityIndex].studentsNumber}K students are studying on this university.",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text(
                            " University description:",
                            style: TextStyle(fontSize: 22, color: Colors.blue),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(20, 3, 0, 3),
                          child: Text(
                            "${universities[result.scholarship.universityIndex].description}.",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text(
                            " Scholarship study level:",
                            style: TextStyle(fontSize: 22, color: Colors.blue),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(20, 3, 0, 3),
                          child: Text(
                            "${result.scholarship.studyLevel}.",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text(
                            " Scholarship specification:",
                            style: TextStyle(fontSize: 22, color: Colors.blue),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(20, 3, 0, 3),
                          child: Text(
                            "${result.scholarship.specification}.",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text(
                            " Scholarship academic language:",
                            style: TextStyle(fontSize: 22, color: Colors.blue),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(20, 3, 0, 3),
                          child: Text(
                            "${result.scholarship.academicLanguage}.",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text(
                            " Scholarship fundation:",
                            style: TextStyle(fontSize: 22, color: Colors.blue),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(20, 3, 0, 3),
                          child: Text(
                            "${result.scholarship.fundation}",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text(
                            " Scholarship description:",
                            style: TextStyle(fontSize: 22, color: Colors.blue),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(20, 3, 0, 3),
                          child: Text(
                            "${result.scholarship.description}.",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Text(
                            " Scholarship application link:",
                            style: TextStyle(fontSize: 22, color: Colors.blue),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(20, 3, 0, 3),
                          child: GestureDetector(
                            onTap: () async {
                              if (await canLaunch(result.scholarship.link)) {
                                await launch(result.scholarship.link);
                              }
                            },
                            child: Text(
                              "Click here.",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                      ],
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
