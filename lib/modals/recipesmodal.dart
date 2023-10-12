class Recipesmodal {
  String? status;
  String? notificationCount;
  List<Recipedata>? data;

  Recipesmodal({this.status, this.notificationCount, this.data});

  Recipesmodal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    notificationCount = json['notification_count'];
    if (json['data'] != null) {
      data = <Recipedata>[];
      json['data'].forEach((v) {
        data!.add( Recipedata.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String,dynamic>{};
    data['status'] = status;
    data['notification_count'] = notificationCount;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Recipedata {
  String? id;
  String? name;
  String? minDescription;
  String? description;
  String? ingredients;
  String? image;
  String? time;
  String? cals;
  String? dateAdded;

  Recipedata(
      {this.id,
      this.name,
      this.minDescription,
      this.description,
      this.ingredients,
      this.image,
      this.time,
      this.cals,
      this.dateAdded});

  Recipedata.fromJson(Map<String, dynamic> json) {
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
    final Map<String, dynamic> data =  <String, dynamic>{};
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