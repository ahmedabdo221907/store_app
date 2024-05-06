import 'package:store/helper/api.dart';
class GetAllCategory{
   Future<List<dynamic>> getAllCategories()async
  {
    //http.Response response =
    //it replaced with it 
     List<dynamic>data =
     await Api().get(url: "https://fakestoreapi.com/products/categories");
  //List<dynamic>data=jsonDecode(response.body) ;
   return data ;
}
  }
