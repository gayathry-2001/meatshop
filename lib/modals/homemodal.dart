class Homemodal {
  String? status;
  String? notificationCount;
  Data? data;

  Homemodal({this.status, this.notificationCount, this.data});

  Homemodal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    notificationCount = json['notification_count'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['notification_count'] = notificationCount;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? cartCount;
  List<Banners>? banners;
  List<Categories>? categories;
  List<NewArraivals>? newArraivals;

  Data({this.cartCount, this.banners, this.categories, this.newArraivals});

  Data.fromJson(Map<String, dynamic> json) {
    cartCount = json['cart_count'];
    if (json['banners'] != null) {
      banners = <Banners>[];
      json['banners'].forEach((v) {
        banners!.add(Banners.fromJson(v));
      });
    }
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(Categories.fromJson(v));
      });
    }
    if (json['new_arraivals'] != null) {
      newArraivals = <NewArraivals>[];
      json['new_arraivals'].forEach((v) {
        newArraivals!.add(NewArraivals.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cart_count'] = cartCount;
    if (banners != null) {
      data['banners'] = banners!.map((v) => v.toJson()).toList();
    }
    if (categories != null) {
      data['categories'] = categories!.map((v) => v.toJson()).toList();
    }
    if (newArraivals != null) {
      data['new_arraivals'] =
          newArraivals!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Banners {
  String? bannerImageId;
  String? bannerId;
  String? languageId;
  String? title;
  String? link;
  String? image;
  String? sortOrder;
  String? status;
  String? bannerType;

  Banners(
      {this.bannerImageId,
      this.bannerId,
      this.languageId,
      this.title,
      this.link,
      this.image,
      this.sortOrder,
      this.status,
      this.bannerType});

  Banners.fromJson(Map<String, dynamic> json) {
    bannerImageId = json['banner_image_id'];
    bannerId = json['banner_id'];
    languageId = json['language_id'];
    title = json['title'];
    link = json['link'];
    image = json['image'];
    sortOrder = json['sort_order'];
    status = json['status'];
    bannerType = json['banner_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['banner_image_id'] = bannerImageId;
    data['banner_id'] = bannerId;
    data['language_id'] = languageId;
    data['title'] = title;
    data['link'] = link;
    data['image'] = image;
    data['sort_order'] = sortOrder;
    data['status'] = status;
    data['banner_type'] = bannerType;
    return data;
  }
}

class Categories {
  String? categoryId;
  String? image;
  String? parentId;
  String? top;
  String? column;
  String? sortOrder;
  String? status;
  String? dateAdded;
  String? dateModified;
  String? languageId;
  String? name;
  String? description;
  String? metaTitle;
  String? metaDescription;
  String? metaKeyword;
  String? storeId;

  Categories(
      {this.categoryId,
      this.image,
      this.parentId,
      this.top,
      this.column,
      this.sortOrder,
      this.status,
      this.dateAdded,
      this.dateModified,
      this.languageId,
      this.name,
      this.description,
      this.metaTitle,
      this.metaDescription,
      this.metaKeyword,
      this.storeId});

  Categories.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
    image = json['image'];
    parentId = json['parent_id'];
    top = json['top'];
    column = json['column'];
    sortOrder = json['sort_order'];
    status = json['status'];
    dateAdded = json['date_added'];
    dateModified = json['date_modified'];
    languageId = json['language_id'];
    name = json['name'];
    description = json['description'];
    metaTitle = json['meta_title'];
    metaDescription = json['meta_description'];
    metaKeyword = json['meta_keyword'];
    storeId = json['store_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['category_id'] = categoryId;
    data['image'] = image;
    data['parent_id'] = parentId;
    data['top'] = top;
    data['column'] = column;
    data['sort_order'] = sortOrder;
    data['status'] = status;
    data['date_added'] = dateAdded;
    data['date_modified'] = dateModified;
    data['language_id'] = languageId;
    data['name'] = name;
    data['description'] = description;
    data['meta_title'] = metaTitle;
    data['meta_description'] = metaDescription;
    data['meta_keyword'] = metaKeyword;
    data['store_id'] = storeId;
    return data;
  }
}

class NewArraivals {
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

  NewArraivals(
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

  NewArraivals.fromJson(Map<String, dynamic> json) {
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