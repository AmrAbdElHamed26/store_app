import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helper/api_helper.dart';
import 'package:store_app/models/product_model.dart';
class AllProductService{

  Future<List<ProductModel>> getAllProducts() async {

    List<ProductModel> productList = [];
    
    // get data using url
    List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products' );

    // append data to productList , to convert it from Json to model
    print (data.length);
    for (int i = 0 ; i < data.length ; i ++ ){
      productList.add(
        ProductModel.fromJson(data[i])
      );
    }

    print ('length ${productList.length}');
    return productList ;
  }

}