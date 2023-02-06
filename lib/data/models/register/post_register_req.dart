class PostRegisterReq {
  String? firstname;
  String? lastname;
  String? email;
  String? password;
  String? passwordConfirmation;

  PostRegisterReq(
      {this.firstname,
      this.lastname,
      this.email,
      this.password,
      this.passwordConfirmation});

  PostRegisterReq.fromJson(Map<String, dynamic> json) {
    firstname = json['firstname'];
    lastname = json['lastname'];
    email = json['email'];
    password = json['password'];
    passwordConfirmation = json['password_confirmation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.firstname != null) {
      data['firstname'] = this.firstname;
    }
    if (this.lastname != null) {
      data['lastname'] = this.lastname;
    }
    if (this.email != null) {
      data['email'] = this.email;
    }
    if (this.password != null) {
      data['password'] = this.password;
    }
    if (this.passwordConfirmation != null) {
      data['password_confirmation'] = this.passwordConfirmation;
    }
    return data;
  }
}
