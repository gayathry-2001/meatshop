class Editpromdal {
  String? status;
  String? notificationCount;
  String? message;

  Editpromdal({this.status, this.notificationCount, this.message});

  Editpromdal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    notificationCount = json['notification_count'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['status'] = status;
    data['notification_count'] = notificationCount;
    data['message'] = message;
    return data;
  }
}