import "package:flutter/material.dart";
import "GlobalVariables.dart";
import "WhoAmI.dart";

class Introduction extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IntroductionState();
  }
}

class IntroductionState extends State<Introduction> {
  int index = 1;
  Color color1 = Colors.white;
  Color color2 = Colors.white;
  Color color3 = Colors.white;
  String introduction1 =
      "Our primary goal is to make science available to all who appreciate and deserve it.";

  String introduction2 =
      "The quality of information and education opens the horizon for a strong scientific environment.";
  String introduction3 =
      "Our ambition is to make the right student in the university that befits his ambition.";

  @override
  void ChangeColor(int i) {
    setState(() {
      if (index == 1) {
        color1 = Colors.blueAccent;
        color2 = Colors.white;
        color3 = Colors.white;
      }
      if (index == 2) {
        color1 = Colors.white;
        color2 = Colors.blueAccent;
        color3 = Colors.white;
      }
      if (index == 3) {
        color1 = Colors.white;
        color2 = Colors.white;
        color3 = Colors.blueAccent;
      }
    });
  }

  /*
  Future<void> test() async{
    await LoadAllScholarshipsFromJson();
  }

  @override
  void initState() {
    test();
  }
  */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            PageView(
              onPageChanged: (i) {
                setState(() {
                  index = i;
                  index += 1;
                });
              },
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage(
                          "assets/images/others/Introduction1.jpg"),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  child: Transform.translate(
                    offset: Offset(0.0, 120.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Text(
                            "${index}",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          backgroundColor: Colors.blueAccent,
                          radius: 30.0,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.white60,
                                Colors.orangeAccent,
                              ]),
                            ),
                            child: Text(
                              introduction1,
                              style: TextStyle(fontSize: 20),
                            ),
                            // color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage(
                          "assets/images/others/Introduction2.jpg"),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  child: Transform.translate(
                    offset: Offset(0.0, 60.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Text(
                            "${index}",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          backgroundColor: Colors.blueAccent,
                          radius: 30.0,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.white60,
                                Colors.orangeAccent,
                              ]),
                            ),
                            child: Text(
                              introduction2,
                              style: TextStyle(fontSize: 20),
                            ),
                            // color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage(
                            "assets/images/others/Introduction3.jpg"),
                        fit: BoxFit.cover),
                  ),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                child: Text(
                                  "${index}",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                backgroundColor: Colors.blueAccent,
                                radius: 30.0,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Colors.blue,
                                      Colors.yellowAccent.withOpacity(0.6),
                                    ]),
                                  ),
                                  child: Text(
                                    introduction3,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  // color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Transform.translate(
                          offset: Offset(0.0, 0.0),
                          child: Builder(
                            builder: (ctx) => Container(
                              height: 50,
                              width: 230,
                              child: RaisedButton(
                                child: Text(
                                  "Get Started",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                onPressed: () {
                                  LoadUniversitiesFromJson();
                                  LoadAllScholarshipsFromJson();
                                  Navigator.of(ctx).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (ctx) => WhoAmI(),
                                    ),
                                  );
                                },
                                color: Color.fromRGBO(42, 120, 204, 1),
                                splashColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Transform.translate(
                offset: Offset(0, 0),
                child: Container(
                  width: 70,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: index == 1 ? Colors.blueAccent : Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: index == 2 ? Colors.blueAccent : Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: index == 3 ? Colors.blueAccent : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
