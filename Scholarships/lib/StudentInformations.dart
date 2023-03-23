import "package:flutter/material.dart";
import "GlobalVariables.dart";
import "Filtering.dart";
import "StudentResultOverview.dart";
import "TheSadLittleGirl.dart";

class StudentInformation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StudentInformationState();
  }
}

class StudentInformationState extends State<StudentInformation> {
  int lastSelected = 0;
  List<bool> isSelected = new List<bool>.filled(6, false, growable: true);

  String studyLevel = "Bachelor";

  String average = "60";
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

  String year = "1998";
  String month = "September";
  String day = "5";

  List years = [
    "1950",
    "1951",
    "1952",
    "1953",
    "1954",
    "1955",
    "1956",
    "1957",
    "1958",
    "1959",
    "1960",
    "1961",
    "1962",
    "1963",
    "1964",
    "1965",
    "1966",
    "1967",
    "1968",
    "1969",
    "1970",
    "1971",
    "1972",
    "1973",
    "1974",
    "1975",
    "1976",
    "1977",
    "1978",
    "1979",
    "1980",
    "1981",
    "1982",
    "1983",
    "1984",
    "1985",
    "1986",
    "1987",
    "1988",
    "1989",
    "1990",
    "1991",
    "1992",
    "1993",
    "1994",
    "1995",
    "1996",
    "1997",
    "1998",
    "1999",
    "2000",
    "2001",
    "2002",
    "2003",
    "2004",
    "2005",
    "2006",
    "2007",
    "2008",
    "2009",
    "2010"
  ];

  List months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];

  List days31 = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31"
  ];
  List days30 = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30"
  ];
  List days29 = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29"
  ];
  List days28 = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28"
  ];
  List days = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31"
  ];

  String englishLevel = "B1";
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

  String academicLanguage = "Any";
  List languages = [
    "Any",
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

  String fundation = "Any";
  List fundations = ["Fully funded", "Semi funded", "Not funded", "Any"];

  void nastyFeb() {
    setState(() {
      if (month == "February") {
        if (ToInteger(year) % 4 == 0) {
          this.days = this.days29;
        } else {
          this.days = this.days28;
        }
      } else {
        int monthIndex = 0;
        for (int i = 0; i < 12; i++) {
          if (month == months[i]) {
            monthIndex = i;
            break;
          }
        }
        if (monthIndex % 2 == 0) {
          this.days = this.days31;
        } else {
          this.days = this.days30;
        }
      }
    });
  }

  void filtering() {
    setState(() {
      Filtering(studyLevel, average, day, month, year, englishLevel,
          academicLanguage, fundation);
      if (results.length == 0) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => TheSadLittleGirl(),
          ),
        );
      }
      else {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => StudentResultOverview(),
          ),
        );
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
            for (int i = 0; i < 6; i++) {
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
                    ExactAssetImage("assets/images/others/StudentIcon.png"),
                    color: Colors.black,
                  ),
                  Text(
                    " Student informations",
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
                color: Color.fromRGBO(255, 255, 255, 1),
                image: DecorationImage(
                  image: AssetImage(
                      "assets/images/others/StudentInformations.jpg"),
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
                            "Select the scholarship study level:",
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
                            "Your academic average in the previous level (the level"
                            " of study that comes before the level you chose above) :",
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
                          margin: EdgeInsets.fromLTRB(90, 0, 130, 10),
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
                              value: average,
                              onTap: () {
                                setState(() {
                                  isSelected[lastSelected] = false;
                                  isSelected[1] = true;
                                  lastSelected = 1;
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
                                  isSelected[1] = true;
                                  lastSelected = 1;
                                  average = newAverage;
                                });
                                setState(() {
                                  isSelected[lastSelected] = false;
                                  isSelected[1] = true;
                                  lastSelected = 1;
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
                          width: 800,
                          margin: EdgeInsets.fromLTRB(10, 10, 30, 0),
                          child: Text(
                            "Date of birth:",
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
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "Day",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        //color: Color.fromRGBO(
                                        //    42, 120, 204, 1),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 60,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: isSelected[2]
                                          ? Color.fromRGBO(255, 255, 255, 1)
                                          : Color.fromRGBO(238, 238, 238, 1),
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
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
                                        isExpanded: false,
                                        value: day,
                                        onTap: () {
                                          setState(() {
                                            isSelected[lastSelected] = false;
                                            isSelected[2] = true;
                                            lastSelected = 2;
                                            FocusScopeNode currentFocus =
                                                FocusScope.of(context);
                                            if (!currentFocus.hasPrimaryFocus) {
                                              setState(() {
                                                currentFocus.unfocus();
                                              });
                                            }
                                          });
                                        },
                                        onChanged: (newDay) {
                                          setState(() {
                                            isSelected[lastSelected] = false;
                                            isSelected[2] = true;
                                            lastSelected = 2;
                                            day = newDay;
                                          });
                                          setState(() {
                                            isSelected[lastSelected] = false;
                                            isSelected[2] = true;
                                            lastSelected = 2;
                                            FocusScopeNode currentFocus =
                                                FocusScope.of(context);
                                            if (!currentFocus.hasPrimaryFocus) {
                                              setState(() {
                                                currentFocus.unfocus();
                                              });
                                            }
                                          });
                                        },
                                        items: days.map((newDay) {
                                          return DropdownMenuItem(
                                            value: newDay,
                                            child: Text(newDay),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "Month",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        //color: Color.fromRGBO(
                                        //    42, 120, 204, 1),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 130,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: isSelected[2]
                                          ? Color.fromRGBO(255, 255, 255, 1)
                                          : Color.fromRGBO(238, 238, 238, 1),
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                      child: DropdownButton(
                                        icon: Icon(
                                          Icons.arrow_drop_down,
                                          color: Colors.black,
                                        ),
                                        iconSize: 25,
                                        underline: SizedBox(),
                                        isExpanded: false,
                                        value: month,
                                        onTap: () {
                                          setState(() {
                                            isSelected[lastSelected] = false;
                                            isSelected[2] = true;
                                            lastSelected = 2;
                                            FocusScopeNode currentFocus =
                                                FocusScope.of(context);
                                            if (!currentFocus.hasPrimaryFocus) {
                                              setState(() {
                                                currentFocus.unfocus();
                                              });
                                            }
                                          });
                                        },
                                        onChanged: (newMonth) {
                                          setState(() {
                                            isSelected[lastSelected] = false;
                                            isSelected[2] = true;
                                            lastSelected = 2;
                                            month = newMonth;
                                            nastyFeb();
                                          });
                                          setState(() {
                                            isSelected[lastSelected] = false;
                                            isSelected[2] = true;
                                            lastSelected = 2;
                                            FocusScopeNode currentFocus =
                                                FocusScope.of(context);
                                            if (!currentFocus.hasPrimaryFocus) {
                                              setState(() {
                                                currentFocus.unfocus();
                                              });
                                            }
                                          });
                                        },
                                        items: months.map((newMonth) {
                                          return DropdownMenuItem(
                                            value: newMonth,
                                            child: Text(newMonth),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "Year",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        //color: Color.fromRGBO(
                                        //    42, 120, 204, 1),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: 90,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: isSelected[2]
                                          ? Color.fromRGBO(255, 255, 255, 1)
                                          : Color.fromRGBO(238, 238, 238, 1),
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                      child: DropdownButton(
                                        icon: Icon(
                                          Icons.arrow_drop_down,
                                          color: Colors.black,
                                        ),
                                        iconSize: 25,
                                        underline: SizedBox(),
                                        isExpanded: false,
                                        value: year,
                                        onTap: () {
                                          setState(() {
                                            isSelected[lastSelected] = false;
                                            isSelected[2] = true;
                                            lastSelected = 2;
                                            FocusScopeNode currentFocus =
                                                FocusScope.of(context);
                                            if (!currentFocus.hasPrimaryFocus) {
                                              setState(() {
                                                currentFocus.unfocus();
                                              });
                                            }
                                          });
                                        },
                                        onChanged: (newYear) {
                                          setState(() {
                                            isSelected[lastSelected] = false;
                                            isSelected[2] = true;
                                            lastSelected = 2;
                                            year = newYear;
                                            nastyFeb();
                                          });
                                          setState(() {
                                            isSelected[lastSelected] = false;
                                            isSelected[2] = true;
                                            lastSelected = 2;
                                            FocusScopeNode currentFocus =
                                                FocusScope.of(context);
                                            if (!currentFocus.hasPrimaryFocus) {
                                              setState(() {
                                                currentFocus.unfocus();
                                              });
                                            }
                                          });
                                        },
                                        items: years.map((newYear) {
                                          return DropdownMenuItem(
                                            value: newYear,
                                            child: Text(newYear),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
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
                      color: isSelected[3]
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
                            "The evaluation you obtained in the international test of english for universities:",
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
                          margin: EdgeInsets.fromLTRB(90, 0, 140, 10),
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
                                  isSelected[3] = true;
                                  lastSelected = 3;
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
                                  isSelected[3] = true;
                                  lastSelected = 3;
                                  englishLevel = newenglishLevel;
                                });
                                setState(() {
                                  isSelected[lastSelected] = false;
                                  isSelected[3] = true;
                                  lastSelected = 3;
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
                            "Scholarship academic Language:",
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
                              value: academicLanguage,
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
                              onChanged: (newAcademicLanguage) {
                                setState(() {
                                  isSelected[lastSelected] = false;
                                  isSelected[4] = true;
                                  lastSelected = 4;
                                  academicLanguage = newAcademicLanguage;
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
                              onChanged: (newfundationValue) {
                                setState(() {
                                  isSelected[lastSelected] = false;
                                  isSelected[5] = true;
                                  lastSelected = 5;
                                  fundation = newfundationValue;
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
                  SizedBox(height: 5),
                  Container(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    height: 40,
                    width: 130,
                    margin: EdgeInsets.fromLTRB(1, 30, 1, 1),
                    child: RaisedButton(
                      onPressed: () {
                        LoadAllScholarshipsFromJson().then((_)  {
                          filtering();
                        });
                      },
                      color: Color.fromRGBO(42, 120, 204, 1),
                      splashColor: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(width: 5),
                          Container(
                            child: Icon(
                              Icons.search,
                              size: 25,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Search",
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
