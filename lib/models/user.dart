// ignore_for_file: public_member_api_docs, sort_constructors_first
class Users {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;
  Users({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory Users.fromJson(Map<String,dynamic>json) {
    return Users(
      id: json['id'], 
      email: json['email'], 
      firstName: json['First Name'], 
      lastName: json['Last Name'], 
      avatar: json['avatar'],
      );
  }
}
