import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/models/product_model.dart';
class AllProductService{

  Future<List<ProductModel>> getAllProducts() async {

    List<ProductModel> productList = [];


    // get data using url
    http.Response response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
    List<dynamic> data = jsonDecode(response.body);


    // append data to productList , to convert it from Json to model
    for (int i = 0 ; i < data.length ; i ++ ){
      productList.add(
        ProductModel.fromJason(data[i])
      );
    }

    return productList ;
  }

}