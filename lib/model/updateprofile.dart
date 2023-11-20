class Updateprofile {
  String? status;
  String? message;
  String? firstname;
  String? lastname;
  String? email;
  String? mobile;
  String? gender;

  Updateprofile(
      {this.status,
      this.message,
      this.firstname,
      this.lastname,
      this.email,
      this.mobile,
      this.gender});

  Updateprofile.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    email = json['email'];
    mobile = json['mobile'];
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['gender'] = this.gender;
    return data;
  }
}
