import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/models/product_model.dart';
class AllCategoriesService{

  Future<List<dynamic>> getAllCategories() async {
    // get data using url
    http.Response response = await http.get(
        Uri.parse('https://fakestoreapi.com/products/categories'));
    
    List<dynamic> data = jsonDecode(response.body);

    return data;
  }



}