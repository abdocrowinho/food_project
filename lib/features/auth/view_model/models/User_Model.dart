class UserModel {
  String name;
  String email;
  String? img;
  String? userId;

  UserModel({
    required this.name,
    required this.email,
    this.img,
    this.userId,
  });

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
