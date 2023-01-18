import 'dart:convert';

class Product {
 const Product({
    this.images,
    required this.title,
    required this.description,
    required this.dateTime,
    required this.phoneNumber,
    this.userName,
    this.address,
    this.price,}
  );

  final List<String>? images;
  final String title;
  final String description;
  final String dateTime;
  final String phoneNumber;
  final String? userName;
  final String? address;
  final String? price;

  

  Map<String, dynamic> toMap() {
    return  <String, dynamic>{
       'images': images,
       'title': title,
       'description': description,
       'dateTime': dateTime,
       'phoneNumber': phoneNumber,
       'userName': userName,
       'address': address,
       'price': price,

    };
    // if(images != null){
    //   result.addAll({'images': images});
    // }
    // result.addAll({'title': title});
    // result.addAll({'description': description});
    // result.addAll({'dateTime': dateTime});
    // result.addAll({'phoneNumber': phoneNumber});
    // if(userName != null){
    //   result.addAll({'userName': userName});
    // }
    // if(address != null){
    //   result.addAll({'address': address});
    // }
    // if(price != null){
    //   result.addAll({'price': price});
    // }
  
    // return result;
  }

  factory Product.fromMap(Map<String, dynamic> json) {
    return Product(
      images: List<String>.from(json['images']),
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      dateTime: json['dateTime'] ?? '',
      phoneNumber: json['phoneNumber'] ?? '',
      userName: json['userName'],
      address: json['address'],
      price: json['price'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source));
}
