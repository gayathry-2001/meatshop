class Singlerecimodal {
  String? status;
  Singlerecidata? data;

  Singlerecimodal({this.status, this.data});

  Singlerecimodal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ?  Singlerecidata.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Singlerecidata {
  Recipie? recipie;

  Singlerecidata({this.recipie});

  Singlerecidata.fromJson(Map<String, dynamic> json) {
    recipie =
        json['recipie'] != null ?  Recipie.fromJson(json['recipie']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    if (recipie != null) {
      data['recipie'] = recipie!.toJson();
    }
    return data;
  }
}

class Recipie {
  String? id;
  String? name;
  String? minDescription;
  String? description;
  String? ingredients;
  String? image;
  String? time;
  String? cals;
  String? dateAdded;

  Recipie(
      {this.id,
      this.name,
      this.minDescription,
      this.description,
      this.ingredients,
      this.image,
      this.time,
      this.cals,
      this.dateAdded});

  Recipie.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    minDescription = json['min_description'];
    description = json['description'];
    ingredients = json['ingredients'];
    image = json['image'];
    time = json['time'];
    cals = json['cals'];
    dateAdded = json['date_added'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['min_description'] = minDescription;
    data['description'] = description;
    data['ingredients'] = ingredients;
    data['image'] = image;
    data['time'] = time;
    data['cals'] = cals;
    data['date_added'] = dateAdded;
    return data;
  }
}
