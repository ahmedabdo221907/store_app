import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class UpdateProductService {
  Future <ProductModel> updateProduct (
    {
      required  String title ,
      required String category,
      required String price,
      required String description ,
      required String image ,
    })async{
   
  // ignore: missing_required_param
  Map<String,dynamic> data =await  Api().put(
    url: "https://fakestoreapi.com/products", 
    body: {
      'title ' : title,
      'price ' : price ,
      'Category' : category,
      'description ' : description,
      'image ' : image 
     }, 
    );
    return ProductModel.fromJson(data);
  }

} 