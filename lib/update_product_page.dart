import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'components/custom_button.dart';
import 'components/custom_text_form_field.dart';

class UpdateProductPage extends StatefulWidget {

  static String id = "UpdateProductPage";

  UpdateProductPage({Key? key}) : super(key: key);

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {

  String ?productName ;
  String ?description ;
  String ? image ;
  int ?price ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Update Product' , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold), ),
        backgroundColor: Colors.white,
        leading: BackButton(color: Colors.black,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset('assets/shopping.json' ,width: 100),
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(top: 16 , left: 16 , right: 16),
                child: Stack(
                  children: [
                    Lottie.asset('assets/89749-rockert-new.json' ,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        CustomTextField(
                          hintText: 'Product Name ',
                          onChanged: (data){
                            productName = data ;
                          },
                        ),
                        SizedBox(height: 10,),
                        CustomTextField(
                          hintText: 'Product Description ',
                          onChanged: (data){
                            description = data ;
                          },
                        ),
                        SizedBox(height: 10,),

                        CustomTextField(
                          inputType: TextInputType.number,

                          hintText: 'Product Price ',
                          onChanged: (data){
                            price = int.parse(data);
                          },
                        ),
                        SizedBox(height: 10,),

                        CustomTextField(

                          hintText: 'Product Image ',
                          onChanged: (data){
                            image = data ;
                          },
                        ),
                        SizedBox(height: 10,),

                        CustomButon(text: 'Update',onTap: (){
                          setState(() {

                          });


                        },)


                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
