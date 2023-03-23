import "package:flutter/material.dart";
import "Scholarship.dart";
import "GlobalVariables.dart";
import "UniversityScholarshipsOverview.dart";

class UniversityScholarshipModification extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UniversityScholarshipModificationState();
  }
}

class UniversityScholarshipModificationState
    extends State<UniversityScholarshipModification> {
  String studyLevel = scholarship.studyLevel;
  TextEditingController specificationController =
      new TextEditingController(text: scholarship.specification);
  TextEditingController startAgeController =
      new TextEditingController(text: scholarship.startAge.toString());
  TextEditingController endAgeController =
      new TextEditingController(text: scholarship.endAge.toString());
  TextEditingController perfectAgeController =
      new TextEditingController(text: scholarship.perfectAge.toString());
  String englishLevel = scholarship.englishLevel;
  String startAverage = scholarship.startAverage.toString();
  String academicLanguage = scholarship.academicLanguage;
  TextEditingController descriptionController =
      new TextEditingController(text: scholarship.description);
  TextEditingController agePercentageController =
      new TextEditingController(text: scholarship.agePercentage.toString());
  TextEditingController averagePercentageController =
      new TextEditingController(text: scholarship.averagePercentage.toString());
  TextEditingController englishLevelPercentageController =
      new TextEditingController(
          text: scholarship.englishLevelPercentage.toString());
  String fundation = scholarship.fundation;
  TextEditingController linkController =
      new TextEditingController(text: scholarship.link.toString());

  List fundations = ["Fully funded", "Semi funded", "Not funded"];

  List averages = [
    "50",
    "51",
    "52",
    "53",
    "54",
    "55",
    "56",
    "57",
    "58",
    "59",
    "60",
    "61",
    "62",
    "63",
    "64",
    "65",
    "66",
    "67",
    "68",
    "69",
    "70",
    "71",
    "72",
    "73",
    "74",
    "75",
    "76",
    "77",
    "78",
    "79",
    "80",
    "81",
    "82",
    "83",
    "84",
    "85",
    "86",
    "87",
    "88",
    "89",
    "90",
    "91",
    "92",
    "93",
    "94",
    "95",
    "96",
    "97",
    "98",
    "99",
    "100"
  ];

  List englishLevels = [
    "A1",
    "A2",
    "A3",
    "B1",
    "B2",
    "B3",
    "C1",
    "C2",
    "C3",
  ];

  int lastSelected = 0;
  List<bool> isSelected = new List<bool>.filled(12, false, growable: true);
  List languages = [
    "Chinese",
    "Spanish",
    "English",
    "Hindi",
    "Bengali",
    "Portuguese",
    "Russian",
    "Japanese",
    "Telugu",
    "Turkish",
    "Korean",
    "French",
    "German",
    "Vietnamese",
    "Italian",
    "Arabic",
    "Greek",
    "Hungarian",
  ];
  String specificationError = "";
  String ageError = "";
  String startAverageError = "";
  String descriptionError = "";
  String weightingError = "";
  String linkError = "";

  void handleSpecificationError() {
    setState(() {
      if (specificationController.text.length == 0) {
        specificationError = "Specification should not be empty.";
      } else {
        specificationError = "";
      }
    });
  }

  void handleAgeError() {
    setState(() {
      if (!((startAgeController.text.length > 0) &&
          (startAgeController.text.length <= 3))) {
        ageError = "Start age should be between 16 and 70.";
        return;
      }
      if (!((endAgeController.text.length > 0) &&
          (endAgeController.text.length <= 3))) {
        ageError = "End age should be between 16 and 70.";
        return;
      }
      if (!((perfectAgeController.text.length > 0) &&
          (perfectAgeController.text.length <= 3))) {
        ageError = "Perfect age should be between 16 and 70.";
        return;
      }

      int curStartAge = ToInteger(startAgeController.text);
      int curEndAge = ToInteger(endAgeController.text);
      int curPerfectAge = ToInteger(perfectAgeController.text);

      if (curStartAge == -1) {
        ageError = "Start age should be between 16 and 70.";
        return;
      }
      if (curEndAge == -1) {
        ageError = "End age should be between 16 and 70.";
        return;
      }
      if (curPerfectAge == -1) {
        ageError = "Perfect age should be between 16 and 70.";
        return;
      }

      if (!((curStartAge >= 16) && (curStartAge <= 70))) {
        ageError = "Start age should be between 16 and 70.";
        return;
      }
      if (!((curEndAge >= 16) && (curEndAge <= 70))) {
        ageError = "End age should be between 16 and 70.";
        return;
      }
      if (!((curPerfectAge >= 16) && (curPerfectAge <= 70))) {
        ageError = "Perfect age should be between 16 and 70.";
        return;
      }

      if (curStartAge > curEndAge) {
        ageError = "Start age should be less than end age.";
        return;
      }
      if (!((curPerfectAge >= curStartAge) && (curPerfectAge <= curEndAge))) {
        ageError = "Perfect age should be between start age and end age.";
        return;
      }
      ageError = "";
    });
  }

  void handleDescriptionError() {
    setState(() {
      if (descriptionController.text.length == 0) {
        descriptionError = "Description should not be empty.";
      } else {
        descriptionError = "";
      }
    });
  }

  void handleWeightingError() {
    setState(() {
      if (!((agePercentageController.text.length > 0) &&
          (agePercentageController.text.length <= 3))) {
        weightingError = "Age percentage should be between 0 and 100.";
        return;
      }
      if (!((averagePercentageController.text.length > 0) &&
          (averagePercentageController.text.length <= 3))) {
        weightingError = "Average percentage should be between 0 and 100.";
        return;
      }
      if (!((englishLevelPercentageController.text.length > 0) &&
          (englishLevelPercentageController.text.length <= 3))) {
        weightingError =
            "English level percentage should be between 0 and 100.";
        return;
      }
      int curAgePercentage = ToInteger(agePercentageController.text);
      int curAveragePercentage = ToInteger(averagePercentageController.text);
      int curEnglishLevelPercentage =
          ToInteger(englishLevelPercentageController.text);
      if (curAgePercentage == -1) {
        weightingError = "Age percentage should be between 0 and 100.";
        return;
      } else if (!((curAgePercentage >= 0) && (curAgePercentage <= 100))) {
        weightingError = "Age percentage should be between 0 and 100.";
        return;
      }
      if (curAveragePercentage == -1) {
        weightingError = "Average percentage should be between 0 and 100.";
        return;
      } else if (!((curAveragePercentage >= 0) &&
          (curAveragePercentage <= 100))) {
        weightingError = "Average percentage should be between 0 and 100.";
        return;
      }
      if (curEnglishLevelPercentage == -1) {
        weightingError =
            "English level percentage should be between 0 and 100.";
        return;
      } else if (!((curEnglishLevelPercentage >= 0) &&
          (curEnglishLevelPercentage <= 100))) {
        weightingError =
            "English level percentage should be between 0 and 100.";
        return;
      }

      if (curAgePercentage + curAveragePercentage + curEnglishLevelPercentage !=
          100) {
        weightingError = "The sum of percentages should be exactly 100.";
        return;
      }

      weightingError = "";
    });
  }

  void handleLinkError() {
    setState(() {
      if (linkController.text.length == 0) {
        linkError = "Link should not be empty.";
      } else {
        linkError = "";
      }
    });
  }

  void handleAllErrors() {
    setState(() {
      this.handleSpecificationError();
      this.handleAgeError();
      this.handleDescriptionError();
      this.handleWeightingError();
      this.handleLinkError();
    });
  }

  AlertDialog nothingChanged() {
    final AlertDialog alert = AlertDialog(
      title: Text("Nothing changed."),
      content: Container(
        height: 70,
        child: Column(
          children: [
            Divider(
              color: Colors.blueAccent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                    color: Colors.green,
                    child: Text("Ok"),
                    onPressed: () {
                      Navigator.pop(context);
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

  AlertDialog thisScholarshipExist() {
    final AlertDialog alert = AlertDialog(
      title: Text(
          "There is exactly the same scholarship in your scholarships list."),
      content: Container(
        height: 70,
        child: Column(
          children: [
            Divider(
              color: Colors.blueAccent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                    color: Colors.green,
                    child: Text("Ok"),
                    onPressed: () {
                      Navigator.pop(context);
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

  AlertDialog areYouSure() {
    final AlertDialog alert = AlertDialog(
      title: Text("Are you sure you want modify this scholarship?"),
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
                      setState(() {
                        Navigator.pop(context);
                      });
                    }),
                RaisedButton(
                    color: Colors.green,
                    child: Text("Yes"),
                    onPressed: () {
                      setState(() {
                        this.save();
                      });
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

  void save() {
    setState(() {
      Scholarship newScholarship = new Scholarship(
        studyLevel,
        specificationController.text,
        universityIndex,
        descriptionController.text,
        ToInteger(startAgeController.text),
        ToInteger(endAgeController.text),
        ToInteger(perfectAgeController.text),
        englishLevel,
        ToInteger(startAverage),
        academicLanguage,
        ToInteger(agePercentageController.text),
        ToInteger(averagePercentageController.text),
        ToInteger(englishLevelPercentageController.text),
        fundation,
        linkController.text,
      );

      if (isEqual(newScholarship, scholarship)) {
        this.nothingChanged();
        return;
      }

      for (int i = 0; i < universityScholarships.length; i++) {
        if (isEqual(newScholarship, universityScholarships[i])) {
          this.thisScholarshipExist();
          return;
        }
      }

      // LoadAllScholarshipsFromJson(); //We are re-downloading in anticipation of some other updates.
      for (int i = 0; i < allScholarships.length; i++) {
        if (isEqual(allScholarships[i], scholarship)) {
          allScholarships[i] = newScholarship;
        }
      }
      universityScholarships[scholarshipIndex] = newScholarship;
      //TODO.. converting allScholarships list to json formula and upload it;
      PostData();

      Navigator.pop(context);
      Navigator.pop(context);
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) {
        return UniversityScholarshipsOverview();
      }));
    });
  }

  void process() {
    this.handleAllErrors();
    if ((specificationError.length == 0) &&
        (ageError.length == 0) &&
        (descriptionError.length == 0) &&
        (weightingError.length == 0) &&
        (linkError.length == 0)) {
      Scholarship newScholarship = new Scholarship(
        studyLevel,
        specificationController.text,
        universityIndex,
        descriptionController.text,
        ToInteger(startAgeController.text),
        ToInteger(endAgeController.text),
        ToInteger(perfectAgeController.text),
        englishLevel,
        ToInteger(startAverage),
        academicLanguage,
        ToInteger(agePercentageController.text),
        ToInteger(averagePercentageController.text),
        ToInteger(englishLevelPercentageController.text),
        fundation,
        linkController.text,
      );

      if (isEqual(newScholarship, scholarship)) {
        this.nothingChanged();
        return;
      }
      this.areYouSure();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          setState(() {
            for (int i = 0; i < isSelected.length; i++) {
              isSelected[i] = false;
            }
            currentFocus.unfocus();
          });
        }
      },
      child: MaterialApp(
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
                  /*SizedBox(width : 200),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      border: Border.all(color: Colors.black, width: 4),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 40,
                    width: 60,
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: RaisedButton(
                      onPressed: () {
                        save();
                      },
                      color: Color.fromRGBO(42, 120, 204, 1),
                      splashColor: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(width: 5),
                          Container(
                            child: Icon(
                              Icons.save,
                              size: 25,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                  ),*/
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                image: DecorationImage(
                  image: AssetImage("${university.imagePath}"),
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(1), BlendMode.dstATop),
                  fit: BoxFit.cover,
                ),
              ),
              child: (Column(
                children: [
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: isSelected[0]
                          ? Color.fromRGBO(255, 255, 255, 1)
                          : Color.fromRGBO(238, 238, 238, 1),
                      border: Border.all(color: Colors.black, width: 4),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Column(
                      children: [
                        Container(
                          width: 800,
                          margin: EdgeInsets.fromLTRB(10, 10, 30, 0),
                          child: Text(
                            "Study level:",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(42, 120, 204, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                          width: 800,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: isSelected[0]
                                ? Color.fromRGBO(255, 255, 255, 1)
                                : Color.fromRGBO(238, 238, 238, 1),
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            child: Text(
                                              "Bachelor",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                //color: Color.fromRGBO(
                                                //    42, 120, 204, 1),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            child: Radio(
                                              value: "Bachelor",
                                              groupValue: studyLevel,
                                              onChanged: (value) {
                                                setState(() {
                                                  studyLevel = value;
                                                  isSelected[lastSelected] =
                                                      false;
                                                  isSelected[0] = true;
                                                  lastSelected = 0;
                                                });
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Container(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            child: Text(
                                              "Master",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                //color: Color.fromRGBO(
                                                //    42, 120, 204, 1),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            width: 50,
                                            child: Radio(
                                              value: "Master",
                                              groupValue: studyLevel,
                                              onChanged: (value) {
                                                setState(() {
                                                  studyLevel = value;
                                                  isSelected[lastSelected] =
                                                      false;
                                                  isSelected[0] = true;
                                                  lastSelected = 0;
                                                });
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Container(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            child: Text(
                                              "PHD",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                //color: Color.fromRGBO(
                                                //    42, 120, 204, 1),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            width: 50,
                                            child: Radio(
                                              value: "PHD",
                                              groupValue: studyLevel,
                                              onChanged: (value) {
                                                setState(() {
                                                  studyLevel = value;
                                                  isSelected[lastSelected] =
                                                      false;
                                                  isSelected[0] = true;
                                                  lastSelected = 0;
                                                });
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                          width: 800,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: isSelected[1]
                          ? Color.fromRGBO(255, 255, 255, 1)
                          : Color.fromRGBO(238, 238, 238, 1),
                      border: Border.all(color: Colors.black, width: 4),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Column(
                      children: [
                        Container(
                          width: 800,
                          margin: EdgeInsets.fromLTRB(10, 10, 30, 0),
                          child: Text(
                            "Specification:",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(42, 120, 204, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                          width: 800,
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(60, 0, 20, 0),
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3,
                                      color: Color.fromRGBO(42, 120, 204, 1)),
                                ),
                              ),
                              cursorColor: Colors.green,
                              controller: specificationController,
                              minLines: 1,
                              maxLines: 10,
                              onTap: () {
                                setState(() {
                                  isSelected[lastSelected] = false;
                                  isSelected[1] = true;
                                  lastSelected = 1;
                                });
                              },
                            )),
                        SizedBox(
                          height: 3,
                          width: 800,
                        ),
                        Container(
                          child: Text(
                            specificationError,
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        SizedBox(height: 1),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: isSelected[2]
                          ? Color.fromRGBO(255, 255, 255, 1)
                          : Color.fromRGBO(238, 238, 238, 1),
                      border: Border.all(color: Colors.black, width: 4),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      child: Text(
                                        "Start Age:",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromRGBO(42, 120, 204, 1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      width: 50,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1, color: Colors.black),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 3,
                                                color: Color.fromRGBO(
                                                    42, 120, 204, 1)),
                                          ),
                                        ),
                                        cursorColor: Colors.green,
                                        controller: startAgeController,
                                        minLines: 1,
                                        maxLines: 1,
                                        onTap: () {
                                          setState(() {
                                            isSelected[lastSelected] = false;
                                            isSelected[2] = true;
                                            lastSelected = 2;
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 15),
                              Container(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      child: Text(
                                        "End Age:",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromRGBO(42, 120, 204, 1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      width: 50,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1, color: Colors.black),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 3,
                                                color: Color.fromRGBO(
                                                    42, 120, 204, 1)),
                                          ),
                                        ),
                                        cursorColor: Colors.green,
                                        controller: endAgeController,
                                        minLines: 1,
                                        maxLines: 1,
                                        onTap: () {
                                          setState(() {
                                            isSelected[lastSelected] = false;
                                            isSelected[2] = true;
                                            lastSelected = 2;
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 15),
                              Container(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      child: Text(
                                        "Perfect Age:",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromRGBO(42, 120, 204, 1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      width: 50,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1, color: Colors.black),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 3,
                                                color: Color.fromRGBO(
                                                    42, 120, 204, 1)),
                                          ),
                                        ),
                                        cursorColor: Colors.green,
                                        controller: perfectAgeController,
                                        minLines: 1,
                                        maxLines: 1,
                                        onTap: () {
                                          setState(() {
                                            isSelected[lastSelected] = false;
                                            isSelected[2] = true;
                                            lastSelected = 2;
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Text(
                            ageError,
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        SizedBox(height: 1),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: isSelected[5]
                          ? Color.fromRGBO(255, 255, 255, 1)
                          : Color.fromRGBO(238, 238, 238, 1),
                      border: Border.all(color: Colors.black, width: 4),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Column(
                      children: [
                        Container(
                          width: 800,
                          margin: EdgeInsets.fromLTRB(10, 10, 30, 0),
                          child: Text(
                            "The minimum required average",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(42, 120, 204, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                          width: 800,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(70, 0, 130, 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: DropdownButton(
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black,
                              ),
                              iconSize: 25,
                              underline: SizedBox(),
                              isExpanded: true,
                              value: startAverage,
                              onTap: () {
                                setState(() {
                                  isSelected[lastSelected] = false;
                                  isSelected[5] = true;
                                  lastSelected = 5;
                                  FocusScopeNode currentFocus =
                                      FocusScope.of(context);
                                  if (!currentFocus.hasPrimaryFocus) {
                                    setState(() {
                                      currentFocus.unfocus();
                                    });
                                  }
                                });
                              },
                              onChanged: (newAverage) {
                                setState(() {
                                  isSelected[lastSelected] = false;
                                  isSelected[5] = true;
                                  lastSelected = 5;
                                  startAverage = newAverage;
                                });
                                setState(() {
                                  isSelected[lastSelected] = false;
                                  isSelected[5] = true;
                                  lastSelected = 5;
                                  FocusScopeNode currentFocus =
                                      FocusScope.of(context);
                                  if (!currentFocus.hasPrimaryFocus) {
                                    setState(() {
                                      currentFocus.unfocus();
                                    });
                                  }
                                });
                              },
                              items: averages.map((language) {
                                return DropdownMenuItem(
                                  value: language,
                                  child: Text(language),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                          width: 800,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: isSelected[4]
                          ? Color.fromRGBO(255, 255, 255, 1)
                          : Color.fromRGBO(238, 238, 238, 1),
                      border: Border.all(color: Colors.black, width: 4),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Column(
                      children: [
                        Container(
                          width: 800,
                          margin: EdgeInsets.fromLTRB(10, 10, 30, 0),
                          child: Text(
                            "The minimum required evaluation in the international test of english for universities:",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(42, 120, 204, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                          width: 800,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(70, 0, 130, 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: DropdownButton(
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black,
                              ),
                              iconSize: 25,
                              underline: SizedBox(),
                              isExpanded: true,
                              value: englishLevel,
                              onTap: () {
                                setState(() {
                                  isSelected[lastSelected] = false;
                                  isSelected[4] = true;
                                  lastSelected = 4;
                                  FocusScopeNode currentFocus =
                                      FocusScope.of(context);
                                  if (!currentFocus.hasPrimaryFocus) {
                                    setState(() {
                                      currentFocus.unfocus();
                                    });
                                  }
                                });
                              },
                              onChanged: (newenglishLevel) {
                                setState(() {
                                  isSelected[lastSelected] = false;
                                  isSelected[4] = true;
                                  lastSelected = 4;
                                  englishLevel = newenglishLevel;
                                });
                                setState(() {
                                  isSelected[lastSelected] = false;
                                  isSelected[4] = true;
                                  lastSelected = 4;
                                  FocusScopeNode currentFocus =
                                      FocusScope.of(context);
                                  if (!currentFocus.hasPrimaryFocus) {
                                    setState(() {
                                      currentFocus.unfocus();
                                    });
                                  }
                                });
                              },
                              items: englishLevels.map((englishLevel) {
                                return DropdownMenuItem(
                                  value: englishLevel,
                                  child: Text(englishLevel),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                          width: 800,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: isSelected[7]
                          ? Color.fromRGBO(255, 255, 255, 1)
                          : Color.fromRGBO(238, 238, 238, 1),
                      border: Border.all(color: Colors.black, width: 4),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Column(
                      children: [
                        Container(
                          width: 800,
                          margin: EdgeInsets.fromLTRB(10, 10, 30, 0),
                          child: Text(
                            "Academic Language:",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(42, 120, 204, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                          width: 800,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(70, 0, 120, 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: DropdownButton(
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black,
                              ),
                              iconSize: 25,
                              underline: SizedBox(),
                              isExpanded: true,
                              value: academicLanguage,
                              onTap: () {
                                setState(() {
                                  isSelected[lastSelected] = false;
                                  isSelected[7] = true;
                                  lastSelected = 7;
                                  FocusScopeNode currentFocus =
                                      FocusScope.of(context);
                                  if (!currentFocus.hasPrimaryFocus) {
                                    setState(() {
                                      currentFocus.unfocus();
                                    });
                                  }
                                });
                              },
                              onChanged: (newAcademicLanguage) {
                                setState(() {
                                  isSelected[lastSelected] = false;
                                  isSelected[7] = true;
                                  lastSelected = 7;
                                  academicLanguage = newAcademicLanguage;
                                });
                                setState(() {
                                  isSelected[lastSelected] = false;
                                  isSelected[7] = true;
                                  lastSelected = 7;
                                  FocusScopeNode currentFocus =
                                      FocusScope.of(context);
                                  if (!currentFocus.hasPrimaryFocus) {
                                    setState(() {
                                      currentFocus.unfocus();
                                    });
                                  }
                                });
                              },
                              items: languages.map((language) {
                                return DropdownMenuItem(
                                  value: language,
                                  child: Text(language),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                          width: 800,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: isSelected[8]
                          ? Color.fromRGBO(255, 255, 255, 1)
                          : Color.fromRGBO(238, 238, 238, 1),
                      border: Border.all(color: Colors.black, width: 4),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Column(
                      children: [
                        Container(
                          width: 800,
                          margin: EdgeInsets.fromLTRB(10, 10, 30, 0),
                          child: Text(
                            "Description:",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(42, 120, 204, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                          width: 800,
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(60, 0, 20, 0),
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3,
                                      color: Color.fromRGBO(42, 120, 204, 1)),
                                ),
                              ),
                              cursorColor: Colors.green,
                              controller: descriptionController,
                              minLines: 1,
                              maxLines: 10,
                              onTap: () {
                                setState(() {
                                  isSelected[lastSelected] = false;
                                  isSelected[8] = true;
                                  lastSelected = 8;
                                });
                              },
                            )),
                        SizedBox(
                          height: 3,
                          width: 800,
                        ),
                        Container(
                          child: Text(
                            descriptionError,
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        SizedBox(height: 1),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: isSelected[9]
                          ? Color.fromRGBO(255, 255, 255, 1)
                          : Color.fromRGBO(238, 238, 238, 1),
                      border: Border.all(color: Colors.black, width: 4),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Column(
                      children: [
                        Container(
                          width: 800,
                          margin: EdgeInsets.fromLTRB(10, 10, 30, 0),
                          child: Text(
                            "Percentages Distribution according to importance:",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      child: Text(
                                        "Age:",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromRGBO(42, 120, 204, 1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      width: 50,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1, color: Colors.black),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 3,
                                                color: Color.fromRGBO(
                                                    42, 120, 204, 1)),
                                          ),
                                        ),
                                        cursorColor: Colors.green,
                                        controller: agePercentageController,
                                        minLines: 1,
                                        maxLines: 1,
                                        onTap: () {
                                          setState(() {
                                            isSelected[lastSelected] = false;
                                            isSelected[9] = true;
                                            lastSelected = 9;
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 50),
                              Container(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      child: Text(
                                        "Average:",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromRGBO(42, 120, 204, 1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      width: 50,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1, color: Colors.black),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 3,
                                                color: Color.fromRGBO(
                                                    42, 120, 204, 1)),
                                          ),
                                        ),
                                        cursorColor: Colors.green,
                                        controller: averagePercentageController,
                                        minLines: 1,
                                        maxLines: 1,
                                        onTap: () {
                                          setState(() {
                                            isSelected[lastSelected] = false;
                                            isSelected[9] = true;
                                            lastSelected = 9;
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20),
                              Container(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      child: Text(
                                        "English level:",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromRGBO(42, 120, 204, 1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      width: 50,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1, color: Colors.black),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 3,
                                                color: Color.fromRGBO(
                                                    42, 120, 204, 1)),
                                          ),
                                        ),
                                        cursorColor: Colors.green,
                                        controller:
                                            englishLevelPercentageController,
                                        minLines: 1,
                                        maxLines: 1,
                                        onTap: () {
                                          setState(() {
                                            isSelected[lastSelected] = false;
                                            isSelected[9] = true;
                                            lastSelected = 9;
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Text(
                            weightingError,
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        SizedBox(height: 1),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: isSelected[10]
                          ? Color.fromRGBO(255, 255, 255, 1)
                          : Color.fromRGBO(238, 238, 238, 1),
                      border: Border.all(color: Colors.black, width: 4),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Column(
                      children: [
                        Container(
                          width: 800,
                          margin: EdgeInsets.fromLTRB(10, 10, 30, 0),
                          child: Text(
                            "Scholarship fundation:",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(42, 120, 204, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                          width: 800,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(60, 0, 110, 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: DropdownButton(
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black,
                              ),
                              iconSize: 25,
                              underline: SizedBox(),
                              isExpanded: true,
                              value: fundation,
                              onTap: () {
                                setState(() {
                                  isSelected[lastSelected] = false;
                                  isSelected[10] = true;
                                  lastSelected = 10;
                                  FocusScopeNode currentFocus =
                                      FocusScope.of(context);
                                  if (!currentFocus.hasPrimaryFocus) {
                                    setState(() {
                                      currentFocus.unfocus();
                                    });
                                  }
                                });
                              },
                              onChanged: (newfundationValue) {
                                setState(() {
                                  isSelected[lastSelected] = false;
                                  isSelected[10] = true;
                                  lastSelected = 10;
                                  fundation = newfundationValue;
                                });
                                setState(() {
                                  isSelected[lastSelected] = false;
                                  isSelected[10] = true;
                                  lastSelected = 10;
                                  FocusScopeNode currentFocus =
                                      FocusScope.of(context);
                                  if (!currentFocus.hasPrimaryFocus) {
                                    setState(() {
                                      currentFocus.unfocus();
                                    });
                                  }
                                });
                              },
                              items: fundations.map((fundation) {
                                return DropdownMenuItem(
                                  value: fundation,
                                  child: Text(fundation),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                          width: 800,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: isSelected[11]
                          ? Color.fromRGBO(255, 255, 255, 1)
                          : Color.fromRGBO(238, 238, 238, 1),
                      border: Border.all(color: Colors.black, width: 4),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Column(
                      children: [
                        Container(
                          width: 800,
                          margin: EdgeInsets.fromLTRB(10, 10, 30, 0),
                          child: Text(
                            "Scholarship application link:",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(42, 120, 204, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                          width: 800,
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(60, 0, 20, 0),
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3,
                                      color: Color.fromRGBO(42, 120, 204, 1)),
                                ),
                              ),
                              cursorColor: Colors.green,
                              controller: linkController,
                              minLines: 1,
                              maxLines: 3,
                              onTap: () {
                                setState(() {
                                  isSelected[lastSelected] = false;
                                  isSelected[11] = true;
                                  lastSelected = 11;
                                });
                              },
                            )),
                        SizedBox(
                          height: 3,
                          width: 800,
                        ),
                        Container(
                          child: Text(
                            linkError,
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        SizedBox(height: 1),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    height: 40,
                    width: 120,
                    margin: EdgeInsets.fromLTRB(30, 30, 1, 1),
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          this.process();
                        });
                      },
                      color: Color.fromRGBO(42, 120, 204, 1),
                      splashColor: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(width: 5),
                          Container(
                            child: Icon(
                              Icons.save,
                              size: 25,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Save",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }
}
