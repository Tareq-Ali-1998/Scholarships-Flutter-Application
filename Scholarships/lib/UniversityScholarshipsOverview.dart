import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "GlobalVariables.dart";
import "UniversityScholarshipModification.dart";
import "UniversityScholarshipAddition.dart";

class UniversityScholarshipsOverview extends StatefulWidget {
  const UniversityScholarshipsOverview({Key key}) : super(key: key);

  @override
  UniversityScholarshipsOverviewState createState() =>
      UniversityScholarshipsOverviewState();
}

class UniversityScholarshipsOverviewState
    extends State<UniversityScholarshipsOverview> {
  AlertDialog areYouSure(int id) {
    final AlertDialog alert = AlertDialog(
      title: Text("Are you sure you want delete this scholarship?"),
      content: Container(
        height: 70,
        child: Column(
          children: [
            Divider(
              color: Colors.blueAccent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaisedButton(
                    color: Colors.red,
                    child: Text("No"),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                RaisedButton(
                    color: Colors.green,
                    child: Text("Yes"),
                    onPressed: () {
                      this.delete(id);
                    }),
              ],
            ),
          ],
        ),
      ),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  void delete(int id) {
    setState(() {
      // LoadAllScholarshipsFromJson(); //We are re-downloading in anticipation of some other updates.
      scholarship = universityScholarships[id];
      for (int i = 0; i < allScholarships.length; i++) {
        if (scholarship == allScholarships[i]) {
          allScholarships.removeAt(i);
          break;
        }
      }

      universityScholarships.removeAt(id);

      //TODO.. converting allScholarships list to json formula and upload it;
      PostData();

      Navigator.pop(context);
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) {
        return UniversityScholarshipsOverview();
      }));
    });
  }

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
          child: ListView.builder(
            itemCount: universityScholarships.length,
            padding: EdgeInsets.fromLTRB(10, 10, 30, 10),
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                          university.imagePath,
                                        ),
                                        radius: 50,
                                        foregroundColor:
                                            Color.fromRGBO(42, 120, 204, 1),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: CircleAvatar(
                                        child: Text(
                                          "${universityScholarships[index].studyLevel}",
                                          style: TextStyle(
                                              fontSize: 22,
                                              color: Colors.black),
                                        ),
                                        radius: 50,
                                        //foregroundColor: Color.fromRGBO(42, 120, 204, 1),
                                        backgroundColor:
                                            Color.fromRGBO(246, 170, 72, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.red,
                                  height: 3,
                                  thickness: 4,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
                            color: Color.fromRGBO(238, 238, 238, 1),
                            child: Row(
                              children: [
                                Text(
                                  " Specification: ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade700),
                                ),
                                Text(
                                  "${universityScholarships[index].specification}.",
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
                                  " Academic language: ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade700),
                                ),
                                Text(
                                  "${universityScholarships[index].academicLanguage}.",
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
                                  " Age: ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade700),
                                ),
                                Text(
                                  "from ${universityScholarships[index].startAge} to ${universityScholarships[index].endAge}.",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                            height: 3,
                            thickness: 3,
                          ),
                          Container(
                            height: 50,
                            width: double.infinity,
                            child: Row(
                              children: [
                                VerticalDivider(
                                  width: 3,
                                  thickness: 3,
                                  color: Colors.black,
                                ),
                                Expanded(
                                    child: Center(
                                  child: Container(
                                    height: 50,
                                    width: double.maxFinite,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    child: RaisedButton(
                                      onPressed: () {
                                        setState(() {
                                          scholarshipIndex = index;
                                          scholarship =
                                              universityScholarships[index];
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (ctx) =>
                                                  UniversityScholarshipModification(),
                                            ),
                                          );
                                        });
                                      },
                                      color: Color.fromRGBO(42, 120, 204, 1),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text("Edit",
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.white)),
                                          ),
                                          SizedBox(width: 10),
                                          Icon(
                                            Icons.edit,
                                            color: Colors.black,
                                            size: 27,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )),
                                VerticalDivider(
                                  width: 3,
                                  thickness: 3,
                                  color: Colors.black,
                                ),
                                Expanded(
                                    child: Center(
                                  child: Container(
                                    height: 50,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    child: RaisedButton(
                                      onPressed: () {
                                        setState(() {
                                          this.areYouSure(index);
                                        });
                                      },
                                      color: Colors.red,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Text("Delete",
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.white)),
                                          ),
                                          SizedBox(width: 10),
                                          Icon(
                                            Icons.delete_forever,
                                            color: Colors.black,
                                            size: 27,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )),
                                VerticalDivider(
                                  width: 3,
                                  thickness: 3,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                            height: 3,
                            thickness: 3,
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
        floatingActionButton: Container(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return UniversityScholarshipAddition();
                }));
              });
            },
            splashColor: Colors.white,
            backgroundColor: Color.fromRGBO(42, 120, 204, 1),
            child: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 20,
                  ),
                  Text("Add",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
