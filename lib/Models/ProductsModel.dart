class ProductsModel{
   String? product_code;
   String?product_name;
   String? uom;
   String? price;

   ProductsModel({
    this.product_code,
    this.product_name,
    this.uom,
     this.price,
  });

  // Create a factory constructor to create a Product instance from a map
  factory ProductsModel.fromMap(Map<dynamic, dynamic> json) {
    return ProductsModel(
      product_code: json['product_code'],
      product_name: json['product_name'],
      uom: json['uom'],
      price: json['price'],
    );
  }

  // Create a method to convert a Product instance to a map
  Map<String, dynamic> toMap() {
    return {
      'product_code': product_code,
      'product_name': product_name,
      'uom': uom,
      'price': price,
    };
  }
}
