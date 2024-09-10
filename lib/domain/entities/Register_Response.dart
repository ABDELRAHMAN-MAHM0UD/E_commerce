/// message : "success"
/// user : {"name":"Ahmed Abd Al-Muti","email":"ahmedm@gmil.com","role":"user"}
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2ZDRlNjE3NzczMjRiZjVmZTQ0YWYxMyIsIm5hbWUiOiJBaG1lZCBBYmQgQWwtTXV0aSIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzI1MjI4NTY3LCJleHAiOjE3MzMwMDQ1Njd9.00MmqPZFfitDzDGaXwOobAyBLwSf9ch4za9W9o57_5w"

class RegisterResponse {
  RegisterResponse({
      this.message, 
      this.user,
    this.statusMsg,
      this.token,});

  String? message;
  String? statusMsg;
  UserEntity? user;
  String? token;


}

/// name : "Ahmed Abd Al-Muti"
/// email : "ahmedm@gmil.com"
/// role : "user"

class UserEntity {
  UserEntity({
      this.name, 
      this.email, 
      this.role,});

  String? name;
  String? email;
  String? role;


}