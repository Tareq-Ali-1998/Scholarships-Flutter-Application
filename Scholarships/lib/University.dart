class University {
  String name;
  String password;
  String continent;
  String country;
  String city;
  String description;
  String imagePath;
  int rank;
  int studentsNumber;

  University(this.name, this.password, this.continent, this.country, this.city,
      this.description, this.imagePath, this.rank,this.studentsNumber);

  factory University.fromJson(Map<String, dynamic> data) {
    return University(
        data["name"],
        data["password"],
        data["continent"],
        data["country"],
        data["city"],
        data["description"],
        data["imagePath"],
        data["rank"],
        data["studentsNumber"]);
  }
}
