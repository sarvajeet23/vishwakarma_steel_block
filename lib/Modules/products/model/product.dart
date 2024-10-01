
class Product {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  Product({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
