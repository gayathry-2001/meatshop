class Productmodal {
  String? status;
  String? notificationCount;
  List<Productdata>? data;

  Productmodal({this.status, this.notificationCount, this.data});

  Productmodal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    notificationCount = json['notification_count'];
    if (json['data'] != null) {
      data = <Productdata>[];
      json['data'].forEach((v) {
        data!.add( Productdata.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['status'] = status;
    data['notification_count'] = notificationCount;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Productdata {
  String? productId;
  String? image;
  String? weightClass;
  String? sizeText;
  String? name;
  String? discountPrice;
  String? combo;
  String? description;
  String? price;
  String? stockStatusId;
  String? stockStatus;
  String? minimum;
  int? rating;

  Productdata(
      {this.productId,
      this.image,
      this.weightClass,
      this.sizeText,
      this.name,
      this.discountPrice,
      this.combo,
      this.description,
      this.price,
      this.stockStatusId,
      this.stockStatus,
      this.minimum,
      this.rating});

  Productdata.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    image = json['image'];
    weightClass = json['weight_class'];
    sizeText = json['size_text'];
    name = json['name'];
    discountPrice = json['discount_price'];
    combo = json['combo'];
    description = json['description'];
    price = json['price'];
    stockStatusId = json['stock_status_id'];
    stockStatus = json['stock_status'];
    minimum = json['minimum'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['product_id'] = productId;
    data['image'] = image;
    data['weight_class'] = weightClass;
    data['size_text'] = sizeText;
    data['name'] = name;
    data['discount_price'] = discountPrice;
    data['combo'] = combo;
    data['description'] = description;
    data['price'] = price;
    data['stock_status_id'] = stockStatusId;
    data['stock_status'] = stockStatus;
    data['minimum'] = minimum;
    data['rating'] = rating;
    return data;
  }
}