class UserModel {
  final String name;
  final String? image;
  final num phone;
  final String email;

  UserModel({
    required this.name,
    this.image,
    required this.phone,
    required this.email,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      image: json['image'],
      phone: json['phone'],
      email: json['email'],
    );
  }
}
