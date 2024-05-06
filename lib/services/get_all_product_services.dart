
import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class GetAllProductServices{
     
    Future<List<ProductModel>> getAllproducts()
    async{
   List<dynamic>data=
              await Api().get(url:"https://fakestoreapi.com/products");
   //   List<dynamic>data=jsonDecode(response.body) ;
    List<ProductModel> productList =[];
     for(int i=0;i<data.length;i++){
     productList.add(
     ProductModel.fromJson(data[i])
      );
    }     
    return productList;
  }
 
} 
     
             
