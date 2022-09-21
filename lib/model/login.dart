class DataUser {
  String? username;
  String? password;

  DataUser({this.username, this.password});

  DataUser.fromMap(Map<String, dynamic> json) {
    username = json['USERNAME'];
    password = json['PASSWORD'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['USERNAME'] = username;
    data['PASSWORD'] = password;
    return data;
  }
}
