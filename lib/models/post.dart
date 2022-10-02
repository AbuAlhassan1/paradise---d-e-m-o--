// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

List<Post> postFromJson(String str) => List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  Post({
    required this.matrixName,
    required this.imageName,
    required this.categoryId,
    required this.categoryName,
    required this.isActive,
    required this.ocaIndicator,
    required this.docs,
    required this.base64Image,
    required this.rowNumber,
    required this.recordCount,
    required this.unitPrice,
    required this.colors,
    required this.category,
    required this.unitPriceAfterDis,
    required this.disValue,
    required this.discountPer,
    required this.matrixTypeId,
    required this.matrixTypeName,
    required this.matrixType,
    required this.relatedMatrices,
    required this.notes,
    required this.qty,
    required this.currency,
    required this.id,
    required this.insertDate,
    required this.insertEntUserAccountId,
    required this.updateDate,
    required this.updateEntUserAccountId,
    required this.version,
  });

  dynamic matrixName;
  dynamic imageName;
  dynamic categoryId;
  dynamic categoryName;
  dynamic isActive;
  dynamic ocaIndicator;
  dynamic docs;
  dynamic base64Image;
  dynamic rowNumber;
  dynamic recordCount;
  dynamic unitPrice;
  dynamic colors;
  dynamic category;
  dynamic unitPriceAfterDis;
  dynamic disValue;
  dynamic discountPer;
  dynamic matrixTypeId;
  dynamic matrixTypeName;
  dynamic matrixType;
  dynamic relatedMatrices;
  dynamic notes;
  dynamic qty;
  dynamic currency;
  dynamic id;
  dynamic insertDate;
  dynamic insertEntUserAccountId;
  dynamic updateDate;
  dynamic updateEntUserAccountId;
  dynamic version;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    matrixName: json["matrixName"],
    imageName: json["imageName"],
    categoryId: json["categoryId"],
    categoryName: json["categoryName"],
    isActive: json["isActive"],
    ocaIndicator: json["ocaIndicator"],
    docs: json["docs"],
    base64Image: json["base64Image"],
    rowNumber: json["rowNumber"],
    recordCount: json["recordCount"],
    unitPrice: json["unitPrice"],
    colors: List<dynamic>.from(json["colors"].map((x) => x)),
    category: json["category"],
    unitPriceAfterDis: json["unitPriceAfterDis"],
    disValue: json["disValue"],
    discountPer: json["discountPer"],
    matrixTypeId: json["matrixTypeId"],
    matrixTypeName: json["matrixTypeName"],
    matrixType: json["matrixType"],
    relatedMatrices: List<dynamic>.from(json["relatedMatrices"].map((x) => x)),
    notes: json["notes"],
    qty: json["qty"],
    currency: json["currency"],
    id: json["id"],
    insertDate: DateTime.parse(json["insertDate"]),
    insertEntUserAccountId: json["insertENTUserAccountId"],
    updateDate: DateTime.parse(json["updateDate"]),
    updateEntUserAccountId: json["updateENTUserAccountId"],
    version: json["version"],
  );

  Map<String, dynamic> toJson() => {
    "matrixName": matrixName,
    "imageName": imageName,
    "categoryId": categoryId,
    "categoryName": categoryName,
    "isActive": isActive,
    "ocaIndicator": ocaIndicator,
    "docs": docs,
    "base64Image": base64Image,
    "rowNumber": rowNumber,
    "recordCount": recordCount,
    "unitPrice": unitPrice,
    "colors": List<dynamic>.from(colors.map((x) => x)),
    "category": category,
    "unitPriceAfterDis": unitPriceAfterDis,
    "disValue": disValue,
    "discountPer": discountPer,
    "matrixTypeId": matrixTypeId,
    "matrixTypeName": matrixTypeName,
    "matrixType": matrixType,
    "relatedMatrices": List<dynamic>.from(relatedMatrices.map((x) => x)),
    "notes": notes,
    "qty": qty,
    "currency": currency,
    "id": id,
    "insertDate": insertDate.toIso8601String(),
    "insertENTUserAccountId": insertEntUserAccountId,
    "updateDate": updateDate.toIso8601String(),
    "updateENTUserAccountId": updateEntUserAccountId,
    "version": version,
  };
}
