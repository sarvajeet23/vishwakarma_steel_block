import 'package:freezed_annotation/freezed_annotation.dart';
part 'product.g.dart';
part 'product.freezed.dart';
@freezed
class Products with _$Products{
  factory Products ({
      int? userId,
      int? id,
      String? title,
     String? body,

  })=_Products;

factory Products.fromJson(Map<String,dynamic>json)=>_$ProductsFromJson(json);
}




// class Product {
//   final int? userId;
//   final int? id;
//   final String? title;
//   final String? body;

//   Product({
//     this.userId,
//     this.id,
//     this.title,
//     this.body,
//   });

//   factory Product.fromJson(Map<String, dynamic> json) => Product(
//         userId: json["userId"],
//         id: json["id"],
//         title: json["title"],
//         body: json["body"],
//       );

//   Map<String, dynamic> toJson() => {
//         "userId": userId,
//         "id": id,
//         "title": title,
//         "body": body,
//       };
// }



