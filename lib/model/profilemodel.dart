class Userprofile {
  String? fname;
  String? mobile;
  String? email;

  Userprofile({this.fname, this.mobile, this.email});

  Userprofile.fromJson(Map<String, dynamic> json) {
    fname = json['fname'];
    mobile = json['mobile'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fname'] = this.fname;
    data['mobile'] = this.mobile;
    data['email'] = this.email;
    return data;
  }
}