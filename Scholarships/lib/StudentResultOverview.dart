import "package:flutter/material.dart";
import "GlobalVariables.dart";
import "StudentResultDetails.dart";

class StudentResultOverview extends StatefulWidget {
  const StudentResultOverview({Key key}) : super(key: key);

  @override
  StudentResultOverviewState createState() => StudentResultOverviewState();
}

class StudentResultOverviewState extends State<StudentResultOverview> {
  Color setColor(int percentage) {
    List<Color> colors = [
      Color.fromRGBO(255, 50, 0, 1),
      Color.fromRGBO(255, 100, 0, 1),
      Color.fromRGBO(255, 150, 0, 1),
      Color.fromRGBO(255, 200, 0, 1),
      Color.fromRGBO(255, 250, 0, 1),
      Color.fromRGBO(200, 255, 0, 1),
      Color.fromRGBO(150, 255, 0, 1),
      Color.fromRGBO(100, 255, 0, 1),
      Color.fromRGBO(50, 255, 0, 1),
      Color.fromRGBO(0, 255, 0, 1),
    ];

    return colors[((percentage / 10).toInt())];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.school,
                  color: Colors.black,
                ),
                Text(
                  " Here is your search result",
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
        body: Center(
          child: ListView.builder(
            itemCount: results.length,
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Card(
                    // color: Colors.grey.shade300,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blue.shade900,
                                  Colors.blue.shade700,
                                  Colors.blue.shade600,
                                  Colors.blue.shade500,
                                  Colors.orangeAccent,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                          universities[results[index]
                                                  .scholarship
                                                  .universityIndex]
                                              .imagePath,
                                        ),
                                        radius: 50,
                                        foregroundColor: Colors.black,
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "  ${universities[results[index].scholarship.universityIndex].name}",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          "  University",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          "@${universities[results[index].scholarship.universityIndex].country}",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        Text(
                                          "in ${universities[results[index].scholarship.universityIndex].city} city",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.red,
                                  height: 3,
                                  thickness: 2,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                              "+${universities[results[index].scholarship.universityIndex].studentsNumber.toString()}K"),
                                          Text(
                                            "Students",
                                            style: TextStyle(fontSize: 30),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                              "${universities[results[index].scholarship.universityIndex].rank}"),
                                          Text(
                                            "Rank",
                                            style: TextStyle(fontSize: 30),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
                            color: this.setColor(results[index].percentage),
                            child: Row(
                              children: [
                                Text(
                                  " Acceptance rate: ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade700),
                                ),
                                Text(
                                  "${results[index].percentage}%",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                            height: 3,
                            thickness: 1,
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
                            color: Color.fromRGBO(238, 238, 238, 1),
                            child: Row(
                              children: [
                                Text(
                                  " ${results[index].scholarship.studyLevel} in ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade700),
                                ),
                                Text(
                                  "${results[index].scholarship.specification}",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                            height: 3,
                            thickness: 1,
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
                            color: Color.fromRGBO(238, 238, 238, 1),
                            child: Row(
                              children: [
                                Text(
                                  " Language: ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade700),
                                ),
                                Text(
                                  "${results[index].scholarship.academicLanguage}",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                            height: 3,
                            thickness: 1,
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
                            color: Color.fromRGBO(238, 238, 238, 1),
                            child: Row(
                              children: [
                                Text(
                                  " Fundation: ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade700),
                                ),
                                Text(
                                  "${results[index].scholarship.fundation}",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                            height: 3,
                            thickness: 1,
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
                            color: Color.fromRGBO(0, 0, 0, 1),
                            child: RaisedButton(
                              onPressed: () {
                                result = results[index];
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (ctx) {
                                  return StudentResultDetails();
                                }));
                              },
                              color: Color.fromRGBO(0, 0, 0, 1),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text("Details",
                                        style: TextStyle(
                                            fontSize: 30, color: Colors.white)),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.details,
                                    color: Colors.blue,
                                    size: 30,
                                  )
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
            },
          ),
        ),
      ),
    );
  }
}
