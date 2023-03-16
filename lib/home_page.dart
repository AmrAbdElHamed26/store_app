import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/services/get_all_product_service.dart';

import 'components/custom_card.dart';
import 'models/product_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'New Trend',
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Icon(
              FontAwesomeIcons.cartShopping,
              color: Colors.black54,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15 , right: 15 , top: 65),
        child: FutureBuilder<List<ProductModel>>(
          future: AllProductService().getAllProducts(),
          builder: (context , snapshot ){
            if(snapshot.hasData){
              List<ProductModel> products = snapshot.data! ;
              return GridView.builder(
                itemCount: products.length,
                clipBehavior: Clip.none,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.6 ,
                  mainAxisSpacing: 100,
                  crossAxisSpacing: 15 ,
                ),
                itemBuilder: (context , index)=> CustomCard(product: products[index]),
              );
            }
            else{
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  CircularProgressIndicator(),
                  Text('Please Wait' , style: TextStyle(color: Colors.grey , fontWeight: FontWeight.bold),),
                ],),
              );
            }
          }
        ),
      ),
    );
  }
}
