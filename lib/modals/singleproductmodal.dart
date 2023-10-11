import 'dart:convert';

Singleproductmodal singleproductFromJson(String str) => Singleproductmodal.fromJson(json.decode(str));

String singleproductToJson(Singleproductmodal data) => json.encode(data.toJson());

class Singleproductmodal {
    String status;
    String notificationCount;
    String cartCount;
    Singledata data;

    Singleproductmodal({
        required this.status,
        required this.notificationCount,
        required this.cartCount,
        required this.data,
    });

    factory Singleproductmodal.fromJson(Map<String, dynamic> json) => Singleproductmodal(
        status: json["status"],
        notificationCount: json["notification_count"],
        cartCount: json["cart_count"],
        data: Singledata.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "notification_count": notificationCount,
        "cart_count": cartCount,
        "data": data.toJson(),
    };
}

class Singledata {
    String name;
    String productPrice;
    String combo;
    String discountPrice;
    String requiredQuantity;
    String availableQuantity;
    String weight;
    String wishlistStatus;
    String minimum;
    String stockStatus;
    List<String> images;
    String description;
    List<dynamic> relatedProducts;
    String wholePrice;
    FishCuts fishCuts;

    Singledata({
        required this.name,
        required this.productPrice,
        required this.combo,
        required this.discountPrice,
        required this.requiredQuantity,
        required this.availableQuantity,
        required this.weight,
        required this.wishlistStatus,
        required this.minimum,
        required this.stockStatus,
        required this.images,
        required this.description,
        required this.relatedProducts,
        required this.wholePrice,
        required this.fishCuts,
    });

    factory Singledata.fromJson(Map<String, dynamic> json) => Singledata(
        name: json["name"],
        productPrice: json["product_price"],
        combo: json["combo"],
        discountPrice: json["discount_price"],
        requiredQuantity: json["required_quantity"],
        availableQuantity: json["available_quantity"],
        weight: json["weight"],
        wishlistStatus: json["wishlist_status"],
        minimum: json["minimum"],
        stockStatus: json["stock_status"],
        images: List<String>.from(json["images"].map((x) => x)),
        description: json["description"],
        relatedProducts: List<dynamic>.from(json["related_products"].map((x) => x)),
        wholePrice: json["whole_price"],
        fishCuts: FishCuts.fromJson(json["fish_cuts"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "product_price": productPrice,
        "combo": combo,
        "discount_price": discountPrice,
        "required_quantity": requiredQuantity,
        "available_quantity": availableQuantity,
        "weight": weight,
        "wishlist_status": wishlistStatus,
        "minimum": minimum,
        "stock_status": stockStatus,
        "images": List<dynamic>.from(images.map((x) => x)),
        "description": description,
        "related_products": List<dynamic>.from(relatedProducts.map((x) => x)),
        "whole_price": wholePrice,
        "fish_cuts": fishCuts.toJson(),
    };
}

class FishCuts {
    List<dynamic> meat;
    List<dynamic> whole;

    FishCuts({
        required this.meat,
        required this.whole,
    });

    factory FishCuts.fromJson(Map<String, dynamic> json) => FishCuts(
        meat: List<dynamic>.from(json["meat"].map((x) => x)),
        whole: List<dynamic>.from(json["whole"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "meat": List<dynamic>.from(meat.map((x) => x)),
        "whole": List<dynamic>.from(whole.map((x) => x)),
    };
}