import '../../domain/entities/Register_Response.dart';

/// message : "success"
/// user : {"name":"Ahmed Abd Al-Muti","email":"ahmedm@gmil.com","role":"user"}
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2ZDRlNjE3NzczMjRiZjVmZTQ0YWYxMyIsIm5hbWUiOiJBaG1lZCBBYmQgQWwtTXV0aSIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzI1MjI4NTY3LCJleHAiOjE3MzMwMDQ1Njd9.00MmqPZFfitDzDGaXwOobAyBLwSf9ch4za9W9o57_5w"

class RegisterResponseDto extends RegisterResponse {
  RegisterResponseDto({
     super.message,
    super.token,
    super.statusMsg,
    super.user
});

  RegisterResponseDto.fromJson(dynamic json) {
    message = json['message'];
    statusMsg = json['statusMsg'];
    user = json['user'] != null ? UserDto.fromJson(json['user']) : null;
    token = json['token'];
  }


}

/// name : "Ahmed Abd Al-Muti"
/// email : "ahmedm@gmil.com"
/// role : "user"

class UserDto extends UserEntity {
  UserDto({
      super.name,
      super.email,
      super.role,});

  UserDto.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
    role = json['role'];
  }



}