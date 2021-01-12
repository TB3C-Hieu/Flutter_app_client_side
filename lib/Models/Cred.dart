class Cred {
  String userName;
  String userPassword;

  Cred({
    this.userName,
    this.userPassword,
  });

  Cred.fromJson(Map<String, dynamic> json) {
    this.userName = json['UserName'];
    this.userPassword = json['Password'];
  }

  String toString() {
    String _string;

    _string = '{"UserName": "$userName", "Password": "$userPassword"}';

    return _string;
  }
}
