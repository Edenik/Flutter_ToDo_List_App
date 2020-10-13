class Task {
  int id;
  String title;
  DateTime date;
  String prioriry;
  int status; //0 - Incomplete, 1 - Complete

  Task({this.title, this.date, this.prioriry, this.status});
  Task.withId({this.id, this.title, this.date, this.prioriry, this.status});

  Map<String, dynamic> toMap() {
    final map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['title'] = title;
    map['date'] = date.toIso8601String();
    map['priority'] = prioriry;
    map['status'] = status;
    return map;
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task.withId(
        id: map['id'],
        title: map['title'],
        date: DateTime.parse(map['date']),
        prioriry: map['priority'],
        status: map['status']);
  }
}
