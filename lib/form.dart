class TestForm {
  String name;
  String listening;
  String speaking;
  String writing;
  String reading;

  TestForm(
      this.name, this.listening, this.speaking, this.writing, this.reading);

  factory TestForm.fromJson(dynamic json) {
    return TestForm("${json['name']}", "${json['lsitening']}",
        "${json['speaking']}", "${json['writing']}", "${json['reading']}");
  }
}
