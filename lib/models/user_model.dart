class UserModel {
  final int id;
  final String name;
  final String email;
  final String username;
  final String profilePhotoUrl;
  final String token;
  final String? phone;
  final String? emailVerifiedAt; // nullable
  final String? twoFactorConfirmedAt; // nullable
  final String? currentTeamId; // nullable
  final String? profilePhotoPath; // nullable
  final String createdAt;
  final String updatedAt;
  final String roles;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.username,
    required this.profilePhotoUrl,
    required this.token,
    this.phone,
    required this.roles,
    this.emailVerifiedAt,
    this.twoFactorConfirmedAt,
    this.currentTeamId,
    this.profilePhotoPath,
    required this.createdAt,
    required this.updatedAt,
  });

  UserModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        email = json['email'],
        username = json['username'],
        profilePhotoUrl = json['profile_photo_url'],
        token = json['token'],
        phone = json['phone'],
        roles = json['roles'],
        emailVerifiedAt = json['email_verified_at'],
        twoFactorConfirmedAt = json['two_factor_confirmed_at'],
        currentTeamId = json['current_team_id'],
        profilePhotoPath = json['profile_photo_path'],
        createdAt = json['created_at'],
        updatedAt = json['updated_at'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      'profile_photo_url': profilePhotoUrl,
      'token': token,
    };
  }

  UserModel copyWith({
    String? id,
    String? name,
    String? email,
    String? username,
    String? profilePhotoUrl,
    String? token,
    String? roles,
    String? phone,
    String? createdAt,
    String? updatedAt,
  }) {
    return UserModel(
      id: id as int? ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      username: username ?? this.username,
      profilePhotoUrl: profilePhotoUrl ?? this.profilePhotoUrl,
      token: token ?? this.token,
      roles: roles ?? this.roles,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
