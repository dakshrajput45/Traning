class Doctor {
  String? image;
  String? name;
  String? field;
  String? description;

  Doctor(
      {required this.image,
      required this.name,
      required this.field,
      required this.description});

  Doctor.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    field = json['field'];
    description = json['description'];
  }

  Map<String,dynamic>toJson() {
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data['image'] = this.image;
    data['name'] = this.name;
    data['field'] = this.field;
    data['description'] = this.description;
    return data;
  }
}
