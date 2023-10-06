class Regimodal {
  String? status;
  String? message;
  String? userId;
  String? firstname;
  String? lastname;
  String? email;
  String? telephone;
  String? promoCode;

  Regimodal(
      {this.status,
      this.message,
      this.userId,
      this.firstname,
      this.lastname,
      this.email,
      this.telephone,
      this.promoCode});

  Regimodal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    userId = json['user_id'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    email = json['email'];
    telephone = json['telephone'];
    promoCode = json['promo_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['user_id'] = userId;
    data['firstname'] = firstname;
    data['lastname'] = lastname;
    data['email'] = email;
    data['telephone'] = telephone;
    data['promo_code'] = promoCode;
    return data;
  }
}