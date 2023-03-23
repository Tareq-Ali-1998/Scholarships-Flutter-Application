import "package:flutter/material.dart";
import "GlobalVariables.dart";
import "UniversityLoginExplaining.dart";
import "StudentWelcome.dart";
import "UniversityScholarshipsOverview.dart";

class WhoAmI extends StatefulWidget {
  @override
  WhoAmIState createState() => WhoAmIState();
}

class WhoAmIState extends State<WhoAmI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(42, 120, 204, 1),
        title: Container(
          child: Row(
            children: <Widget>[
              Icon(
                Icons.home,
                color: Colors.black,
              ),
              Text(
                " Home Page",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: Color.fromRGBO(255, 255, 255, 1),
        child: Center(
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  "assets/images/others/WhoAmI.png",
                  height: 300,
                  width: 300,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade200,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 5),
                    Text(
                      "Are you a",
                      style: TextStyle(
                        fontSize: 40,
                        color: Color.fromRGBO(42, 120, 204, 1),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => StudentWelcome(),
                          ),
                        );
                      },
                      leading: ImageIcon(
                        ExactAssetImage("assets/images/others/StudentIcon.png"),
                        color: Color.fromRGBO(42, 120, 204, 1),
                      ),
                      title: Text("Student"),
                      trailing: IconButton(
                          color: Colors.red,
                          icon: Icon(Icons.info_outline_rounded),
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (_) => Container(
                                color: Colors.white,
                                child: Text(
                                  "If you are a student, our application will make it easier for you to find the appropriate scholarship, "
                                  "Not only in terms of the specifications of the scholarship you want, "
                                  "but in terms of your chances in it as well.\n"
                                  "This process is carried out in cooperation with universities, "
                                  "and the acceptance rate is calculated based on your input information and the restrictions set by the university."
                                  "\n\n",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => (university == null)
                                ? UniversityLoginExplaining()
                                : UniversityScholarshipsOverview(),
                          ),
                        );
                      },
                      leading: ImageIcon(
                        ExactAssetImage(
                            "assets/images/others/UniversityIcon.png"),
                        color: Color.fromRGBO(42, 120, 204, 1),
                      ),
                      title: Text("University"),
                      trailing: IconButton(
                          color: Colors.red,
                          icon: Icon(Icons.info_outline_rounded),
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (_) => Container(
                                color: Colors.white,
                                child: Text(
                                  "If you are a university administration, this platform allows you to"
                                  " view your scholarships and link the appropriate students with your appropriate "
                                  "scholarship according to criterias and informations that you can specify accurately.\n"
                                  "And while students search for the scholarships they want, "
                                  "the application will bring the most suitable students with the most"
                                  " appropriate scholarship according to the specifications that you set."
                                  "\n\n",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
