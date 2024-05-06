
import 'package:flutter/material.dart';
import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class AddProduct {

  Future <ProductModel> addProduct (
    {
      required  String title ,
      required String Category,
      required String price,
      required String description ,
      required String image ,
    })async{
   
  
  // ignore: missing_required_param
  Map<String,dynamic> data =await  Api().post(
    url: "https://fakestoreapi.com/products", 
    body: {
      'title ' : title,
      'price ' : price ,
      'Category' : Category,
      'description ' : description,
      'image ' : image 
     }, 
    );
    return ProductModel.fromJson(data);

  }
}