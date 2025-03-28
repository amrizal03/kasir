class MenuModel {
  String? message;
  List<DataSubModel>? data;

  MenuModel({this.message, this.data});

  MenuModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['data'] != null) {
      data = <DataSubModel>[];
      json['data'].forEach((v) {
        data!.add(DataSubModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DataSubModel {
  String? imageUrl;
  String? title;
  String? price;

  DataSubModel({this.imageUrl, this.title, this.price});

  DataSubModel.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    title = json['title'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['imageUrl'] = imageUrl;
    data['title'] = title;
    data['price'] = price;
    return data;
  }
}
