class ProductCategoryDealsModel {
  bool? success;
  String? message;
  List<Data>? data;
  String? errorMsg;

  ProductCategoryDealsModel({this.success, this.message, this.data, this.errorMsg});

  ProductCategoryDealsModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }
  ProductCategoryDealsModel.withError(String errorMsg) {
    errorMsg = errorMsg;
  }

}

class Data {
  int? id;
  int? categoryId;
  int? sellerId;
  String? name;
  String? description;
  String? specification;
  int? price;
  int? quantity;
  String? discount;
  String? thcRange;
  String? slug;
  String? metaTitle;
  String? metaDescription;
  int? status;
  int? featureProduct;
  int? todayDeals;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
        this.categoryId,
        this.sellerId,
        this.name,
        this.description,
        this.specification,
        this.price,
        this.quantity,
        this.discount,
        this.thcRange,
        this.slug,
        this.metaTitle,
        this.metaDescription,
        this.status,
        this.featureProduct,
        this.todayDeals,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    sellerId = json['seller_id'];
    name = json['name'];
    description = json['description'];
    specification = json['specification'];
    price = json['price'];
    quantity = json['quantity'];
    discount = json['discount'];
    thcRange = json['thc_range'];
    slug = json['slug'];
    metaTitle = json['meta_title'];
    metaDescription = json['meta_description'];
    status = json['status'];
    featureProduct = json['feature_product'];
    todayDeals = json['today_deals'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

}

