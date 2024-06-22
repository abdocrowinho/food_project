class UserModel {
  String name;
  String email;
  String? img;
  String? userId;
  String? gender;
  String? birthDate;

  UserModel(
      {required this.name,
      required this.email,
      required this.img,
      this.userId,
      this.gender,
      this.birthDate});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'img': img,
      'userId': userId,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      UserModel(name: json['name'], email: json['email'], img: json['img']);
}
