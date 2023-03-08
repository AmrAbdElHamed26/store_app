import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:store_app/helper/api_helper.dart';
import 'package:store_app/models/product_model.dart';

class CategoriesService {
  Future<List<dynamic>> getAllCategories({
  required String myCategory ,
  }) async {

    List<ProductModel> productList = [];

    // get data using url

    List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products/category/$myCategory');


    for (int i = 0 ; i < data.length ; i ++ ){
      productList.add(
          ProductModel.fromJason(data[i])
      );
    }

    return data;
  }
}