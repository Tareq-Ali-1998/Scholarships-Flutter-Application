import "dart:convert";
import "StudentScholarshipResult.dart";
import "University.dart";
import "dart:async" show Future;
import "package:flutter/services.dart";
import "Scholarship.dart";
import 'package:http/http.dart' as http;

Future LoadUniversitiesFromJson() async {
  String jsonUniversitiesString =
  await rootBundle.loadString("assets/jsonFiles/University.json");
  final fixedJsonUniversitiesString = jsonDecode(jsonUniversitiesString);
  universities = List<University>.from(
      fixedJsonUniversitiesString.map((item) => University.fromJson(item)));
}

void LoadUniversityScholarships(int index) {
  universityScholarships.clear();
  for (int i = 0; i < allScholarships.length; i++) {
    if (allScholarships[i].universityIndex == index) {
      universityScholarships.add(allScholarships[i]);
    }
  }
}


// Future LoadAllScholarshipsFromJson() async { //Locally
//   String UniversityScholarshipsString =
//   await rootBundle.loadString("assets/jsonFiles/Scholarship.json");
//   final fixedJsonUniversityScholarshipsString =
//   jsonDecode(UniversityScholarshipsString);
//   allScholarships = List<Scholarship>.from(fixedJsonUniversityScholarshipsString
//       .map((item) => Scholarship.fromJson(item)));
// }



Future LoadAllScholarshipsFromJson() async {
  String allScholarshipsString = await GetData();
  final fixedJsonallScholarshipsStringString =
  jsonDecode(allScholarshipsString);
  allScholarships = List<Scholarship>.from(fixedJsonallScholarshipsStringString
      .map((item) => Scholarship.fromJson(item)));
  print(allScholarships.length);
}

Future<String> GetData() async {
  http.Response response = await http.get("http://h.me-cafe.com/api/values");
  print(response.statusCode);
  if (response.statusCode == 200) {
    return response.body;
  } else {
    print(response.statusCode);
    return "{}";
  }
}


String serialize() {
  List<dynamic> jsonArray = [];
  allScholarships.forEach((scolarship) {
    jsonArray.add(scolarship.toJson());
  });
  return json.encode(jsonArray);
}


Future<bool> PostData() async {
  var res = await http.post("http://h.me-cafe.com/api/values", body:serialize());
  if(res.statusCode == 200){
    return true;
  }else{
    return false;
  }
}


int ToInteger(String s) {
  int helper = 1;
  int ans = 0;
  for (int i = s.length - 1; i >= 0; i--) {
    if (s[i] == '1') {
      ans += (helper);
    } else if (s[i] == '2') {
      ans += (helper * 2);
    } else if (s[i] == '3') {
      ans += (helper * 3);
    } else if (s[i] == '4') {
      ans += (helper * 4);
    } else if (s[i] == '5') {
      ans += (helper * 5);
    } else if (s[i] == '6') {
      ans += (helper * 6);
    } else if (s[i] == '7') {
      ans += (helper * 7);
    } else if (s[i] == '8') {
      ans += (helper * 8);
    } else if (s[i] == '9') {
      ans += (helper * 9);
    } else if (s[i] != '0') {
      return -1;
    }
    helper *= 10;
  }

  return ans;
}

List<University> universities = new List<University>();
University university = null;
int universityIndex = null;

List<Scholarship> allScholarships = new List<Scholarship>();
List<Scholarship> universityScholarships = new List<Scholarship>();
Scholarship scholarship = null;
int scholarshipIndex = null;

List<StudentScholarshipResult> results = new List<StudentScholarshipResult>();
StudentScholarshipResult result = null;
