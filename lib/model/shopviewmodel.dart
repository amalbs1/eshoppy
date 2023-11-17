class Shopview {
  String? id;
  String? image;
  String? shopname;
  String? distance;
  String? address;
  String? rating;

  Shopview(
      {this.id,
      this.image,
      this.shopname,
      this.distance,
      this.address,
      this.rating});

  Shopview.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    shopname = json['shopname'];
    distance = json['distance'];
    address = json['address'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['shopname'] = this.shopname;
    data['distance'] = this.distance;
    data['address'] = this.address;
    data['rating'] = this.rating;
    return data;
  }
}
