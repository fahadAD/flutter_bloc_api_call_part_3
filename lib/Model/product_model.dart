// To parse this JSON data, do
//
//     final productmodel = productmodelFromJson(jsonString);

import 'dart:convert';

Productmodel productmodelFromJson(String str) => Productmodel.fromJson(json.decode(str));

String productmodelToJson(Productmodel data) => json.encode(data.toJson());

class Productmodel {
  Productmodel({
    this.products,
  });

  List<Product>? products;

  factory Productmodel.fromJson(Map<String, dynamic> json) => Productmodel(
    products: json["products"] == null ? [] : List<Product>.from(json["products"]!.map((x) => Product.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "products": products == null ? [] : List<dynamic>.from(products!.map((x) => x.toJson())),
  };
}

class Product {
  Product({
    this.id,
    this.name,
    this.slug,
    this.description,
    this.typeId,
    this.price,
    this.shopId,
    this.salePrice,
    this.sku,
    this.quantity,
    this.inStock,
    this.isTaxable,
    this.shippingClassId,
    this.status,
    this.productType,
    this.purchasePrice,
    this.unit,
    this.height,
    this.width,
    this.length,
    this.image,
    this.gallery,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.maxPrice,
    this.minPrice,
    this.deadline,
    this.targetSale,
    this.delivryDate,
    this.maxQty,
  });

  int? id;
  String? name;
  String? slug;
  String? description;
  int? typeId;
  int? price;
  int? shopId;
  int? salePrice;
  String? sku;
  int? quantity;
  int? inStock;
  int? isTaxable;
  dynamic shippingClassId;
  Status? status;
  ProductType? productType;
  String? purchasePrice;
  String? unit;
  dynamic height;
  dynamic width;
  dynamic length;
  Image? image;
  List<Image>? gallery;
  dynamic deletedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic maxPrice;
  dynamic minPrice;
  DateTime? deadline;
  int? targetSale;
  DateTime? delivryDate;
  int? maxQty;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
    description: json["description"],
    typeId: json["type_id"],
    price: json["price"],
    shopId: json["shop_id"],
    salePrice: json["sale_price"],
    sku: json["sku"],
    quantity: json["quantity"],
    inStock: json["in_stock"],
    isTaxable: json["is_taxable"],
    shippingClassId: json["shipping_class_id"],
    status: statusValues.map[json["status"]]!,
    productType: productTypeValues.map[json["product_type"]]!,
    purchasePrice: json["purchase_price"],
    unit: json["unit"],
    height: json["height"],
    width: json["width"],
    length: json["length"],
    image: json["image"] == null ? null : Image.fromJson(json["image"]),
    gallery: json["gallery"] == null ? [] : List<Image>.from(json["gallery"]!.map((x) => Image.fromJson(x))),
    deletedAt: json["deleted_at"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    maxPrice: json["max_price"],
    minPrice: json["min_price"],
    deadline: json["deadline"] == null ? null : DateTime.parse(json["deadline"]),
    targetSale: json["target_sale"],
    delivryDate: json["delivry_date"] == null ? null : DateTime.parse(json["delivry_date"]),
    maxQty: json["max_qty"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "slug": slug,
    "description": description,
    "type_id": typeId,
    "price": price,
    "shop_id": shopId,
    "sale_price": salePrice,
    "sku": sku,
    "quantity": quantity,
    "in_stock": inStock,
    "is_taxable": isTaxable,
    "shipping_class_id": shippingClassId,
    "status": statusValues.reverse[status],
    "product_type": productTypeValues.reverse[productType],
    "purchase_price": purchasePrice,
    "unit": unit,
    "height": height,
    "width": width,
    "length": length,
    "image": image?.toJson(),
    "gallery": gallery == null ? [] : List<dynamic>.from(gallery!.map((x) => x.toJson())),
    "deleted_at": deletedAt,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "max_price": maxPrice,
    "min_price": minPrice,
    "deadline": deadline?.toIso8601String(),
    "target_sale": targetSale,
    "delivry_date": delivryDate?.toIso8601String(),
    "max_qty": maxQty,
  };
}

class Image {
  Image({
    this.thumbnail,
    this.original,
    this.id,
  });

  String? thumbnail;
  String? original;
  int? id;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    thumbnail: json["thumbnail"],
    original: json["original"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "thumbnail": thumbnail,
    "original": original,
    "id": id,
  };
}

enum ProductType { SIMPLE }

final productTypeValues = EnumValues({
  "simple": ProductType.SIMPLE
});

enum Status { PUBLISH }

final statusValues = EnumValues({
  "publish": Status.PUBLISH
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
