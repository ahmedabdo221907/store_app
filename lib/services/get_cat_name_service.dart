
import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';
class GetCategoryByName{
Future<List<ProductModel>> getAllproducts( {required String categoryName})
    async{
      List<dynamic>data=
      await  Api().get(url: "https://fakestoreapi.com/products/category/${categoryName}");

          //List<dynamic>data=jsonDecode(response.body) ;  
          
  List<ProductModel> productList =[];
  for(int i=0;i<data.length;i++){
      productList.add(
        ProductModel.fromJson(data[i])
      );
  }     
  return productList;
}
}