import "dart:core";

class Scholarship {
  String studyLevel;
  String specification;
  int universityIndex;
  String description;
  int startAge;
  int endAge;
  int perfectAge;
  String englishLevel;
  int startAverage;
  String academicLanguage;
  int agePercentage;
  int averagePercentage;
  int englishLevelPercentage;
  String fundation;
  String link;

  Scholarship(
    this.studyLevel,
    this.specification,
    this.universityIndex,
    this.description,
    this.startAge,
    this.endAge,
    this.perfectAge,
    this.englishLevel,
    this.startAverage,
    this.academicLanguage,
    this.agePercentage,
    this.averagePercentage,
    this.englishLevelPercentage,
    this.fundation,
    this.link,
  );

  factory Scholarship.fromJson(Map<String, dynamic> data) {
    return Scholarship(
        data["studyLevel"],
        data["specification"],
        data["universityIndex"],
        data["description"],
        data["startAge"],
        data["endAge"],
        data["perfectAge"],
        data["englishLevel"],
        data["startAverage"],
        data["academicLanguage"],
        data["agePercentage"],
        data["averagePercentage"],
        data["englishLevelPercentage"],
        data["fundation"],
        data["link"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "studyLevel": studyLevel,
      "specification": specification,
      "universityIndex": universityIndex,
      "description": description,
      "startAge": startAge,
      "endAge": endAge,
      "perfectAge": perfectAge,
      "englishLevel": englishLevel,
      "startAverage": startAverage,
      "academicLanguage": academicLanguage,
      "agePercentage": agePercentage,
      "averagePercentage": averagePercentage,
      "englishLevelPercentage": englishLevelPercentage,
      "fundation": fundation,
      "link": link
    };
  }
}

bool isEqual(Scholarship scholarship1, Scholarship scholarship2) {
  if ((scholarship1.studyLevel == scholarship2.studyLevel) &&
      (scholarship1.specification == scholarship2.specification) &&
      (scholarship1.universityIndex == scholarship2.universityIndex) &&
      (scholarship1.description == scholarship2.description) &&
      (scholarship1.startAge == scholarship2.startAge) &&
      (scholarship1.endAge == scholarship2.endAge) &&
      (scholarship1.englishLevel == scholarship2.englishLevel) &&
      (scholarship1.startAverage == scholarship2.startAverage) &&
      (scholarship1.academicLanguage == scholarship2.academicLanguage) &&
      (scholarship1.agePercentage == scholarship2.agePercentage) &&
      (scholarship1.averagePercentage == scholarship2.averagePercentage) &&
      (scholarship1.englishLevelPercentage ==
          scholarship2.englishLevelPercentage) &&
      (scholarship1.fundation == scholarship2.fundation) &&
      (scholarship1.link == scholarship2.link)) {
    return true;
  }

  return false;
}
