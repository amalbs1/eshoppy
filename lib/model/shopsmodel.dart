class Shopsavailble {
  String? id;
  String? shopname;
  String? image;
  String? distance;
  String? address;
  String? rating;

  Shopsavailble(
      {this.id,
      this.shopname,
      this.image,
      this.distance,
      this.address,
      this.rating});

  Shopsavailble.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    shopname = json['shopname'];
    image = json['image'];
    distance = json['distance'];
    address = json['address'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['shopname'] = this.shopname;
    data['image'] = this.image;
    data['distance'] = this.distance;
    data['address'] = this.address;
    data['rating'] = this.rating;
    return data;
  }
}
