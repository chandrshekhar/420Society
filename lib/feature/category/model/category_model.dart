class CategoryModel {
  bool? success;
  String? message;
  List<Data>? data;

  CategoryModel({this.success, this.message, this.data});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? slug;
  String? image;
  String? metaTitle;
  String? metaDescription;
  int? status;
  int? main;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
        this.name,
        this.slug,
        this.image,
        this.metaTitle,
        this.metaDescription,
        this.status,
        this.main,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
    metaTitle = json['meta_title'];
    metaDescription = json['meta_description'];
    status = json['status'];
    main = json['main'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['image'] = this.image;
    data['meta_title'] = this.metaTitle;
    data['meta_description'] = this.metaDescription;
    data['status'] = this.status;
    data['main'] = this.main;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}