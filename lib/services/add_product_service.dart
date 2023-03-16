import '../helper/api_helper.dart';
import '../models/product_model.dart';

class AddProduct {
  Future<ProductModel> addProduct({required String title , required String price , required String des,required String image ,
    required String category }) async{

    Map<String , dynamic> body = {
    'title':title,
    'price':price,
    'description': des,
    'image': image,
    'category': category,
    };

   Map<String, dynamic> data = await Api().post(url: 'https://fakestoreapi.com/products', body: body, );


   return ProductModel.fromJson(data);
  }
}